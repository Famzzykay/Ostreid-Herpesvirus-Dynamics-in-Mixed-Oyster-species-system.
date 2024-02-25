function ydot=RHS_SIPDmonoCG(t,y)
nVar=4;iSCG=1; iICG=2; iDCG=3; iP=4;
global PAR 
ydot=zeros(nVar,1);


ydot(iSCG) = -PAR.CGPinfect * y(iP) * y(iSCG) + PAR.CGgrowth * y(iSCG) - PAR.CGNatmort * y(iSCG);

ydot(iICG)=   PAR.CGPinfect * y(iP) *y(iSCG) - PAR.ICGmort * y(iICG);

ydot(iDCG)=   PAR.ICGmort * y(iICG) - PAR.Ddecay * y(iDCG);

ydot(iP) = PAR.DCGPburden * PAR.Ddecay * y(iDCG) + PAR.ICGPburden *PAR.ICGPrelease *y(iICG)- PAR.ICGdiaped * PAR.ICGPburden * y(iICG) - PAR.Premove * y(iP);
