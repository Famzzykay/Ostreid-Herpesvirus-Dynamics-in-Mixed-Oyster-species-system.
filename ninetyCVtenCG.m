
global PAR

%   array indexes of variables
%  number of variables in the model

nVar=7;iSCV=1; iSCG=2; iICV=3; iICG=4; iDCV=5; iDCG=6; iP=7;

PAR = PAR_SIPD;  %   define model parameters

y0=zeros(nVar,1);  %     initial conditions

y0(iSCV)=179;
y0(iSCG)=20;
y0(iICV)=1;
y0(iICG)=0;
y0(iDCV)=0;
y0(iDCG)=0;
y0(iP)= 0;


tspan=[0 50];  %   time span,  simulation time


[ninetycvtencgt,y]=ode45(@RHS_SIPD,tspan,y0);

%   Rename model results. New names for the plots.

ninetycvtencgSCV=y(:,1); ninetycvtencgSCG=y(:,2);ninetycvtencgICV=y(:,3);ninetycvtencgICG=y(:,4);ninetycvtencgDCV=y(:,5); ninetycvtencgDCG=y(:,6);ninetycvtencgP=y(:,7);



