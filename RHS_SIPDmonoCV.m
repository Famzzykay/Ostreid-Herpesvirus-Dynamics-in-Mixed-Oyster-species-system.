function ydot=RHS_SIPDmonoCV(t,y)
nVar=4;iSCV=1; iICV=2; iDCV=3; iP=4;
global PAR 
ydot=zeros(nVar,1);



ydot(iSCV) = -PAR.CVPinfect * y(iP) * y(iSCV) + PAR.CVgrowth * y(iSCV) - PAR.CVNatmort * y(iSCV);

ydot(iICV)=   PAR.CVPinfect * y(iP) * y(iSCV) - PAR.ICVmort * y(iICV);

ydot(iDCV)=  PAR.ICVmort * y(iICV) - PAR.Ddecay * y(iDCV);

ydot(iP) =  PAR.DCVPburden * PAR.Ddecay * y(iDCV) + PAR.ICVPburden*PAR.ICVPrelease*y(iICV) -PAR.ICVdiaped *PAR.ICVPburden* y(iICV) - PAR.Premove * y(iP);

