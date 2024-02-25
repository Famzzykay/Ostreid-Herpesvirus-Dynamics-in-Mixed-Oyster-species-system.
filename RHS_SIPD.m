function ydot = RHS_SIPD(t, y)
    nVar = 7; % Number of variables
    iSCV = 1; iSCG = 2; iICV = 3; iICG = 4; iDCV = 5; iDCG = 6; iP = 7;
    global PAR
    ydot = zeros(nVar, 1);

    ydot(iSCV) = -PAR.CVPinfect * y(iP) * y(iSCV) + PAR.CVgrowth * y(iSCV) - PAR.CVNatmort * y(iSCV);

    ydot(iSCG) = -PAR.CGPinfect * y(iP) * y(iSCG) + PAR.CGgrowth * y(iSCG) - PAR.CGNatmort * y(iSCG);

    ydot(iICV) = PAR.CVPinfect * y(iP) * y(iSCV) - PAR.ICVmort * y(iICV);

    ydot(iICG) = PAR.CGPinfect * y(iP) * y(iSCG) - PAR.ICGmort * y(iICG);

    ydot(iDCV) = PAR.ICVmort * y(iICV) - PAR.Ddecay * y(iDCV);

    ydot(iDCG) = PAR.ICGmort * y(iICG) - PAR.Ddecay * y(iDCG);
    
    ydot(iP) =  PAR.DCGPburden * PAR.Ddecay * y(iDCG)  +  PAR.ICGPburden *PAR.ICGPrelease *y(iICG)- PAR.ICGdiaped *PAR.ICGPburden* y(iICG)+ PAR.DCVPburden *PAR.Ddecay * y(iDCV) + PAR.ICVPburden *PAR.ICVPrelease *y(iICV)- PAR.ICVdiaped *PAR.ICVPburden* y(iICV)- PAR.Premove * y(iP); 
    