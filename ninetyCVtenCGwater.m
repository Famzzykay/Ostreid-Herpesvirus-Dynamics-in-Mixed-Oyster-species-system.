
%  SIPD marine model
%
%   SIPD model for  a single population
%
%    The model considers a number of individuals in a population
%    The model considers a number of individuals in a (surface) 

%  
%    Units:

%
global PAR

%   array indexes of variables
%  number of variables in the model

nVar=7;iSCV=1; iSCG=2; iICV=3; iICG=4; iDCV=5; iDCG=6; iP=7;

PAR = PAR_SIPD;  %   define model parameters

y0=zeros(nVar,1);  %     initial conditions

y0(iSCV)=179;
y0(iSCG)=20;
y0(iICV)=0;
y0(iICG)=0;
y0(iDCV)=0;
y0(iDCG)=0;
y0(iP)= 0.0012;


tspan=[0 50];  %   time span,  simulation time


[ninetycvtencgwatert,y]=ode45(@RHS_SIPD,tspan,y0);

%   Rename model results. New names for the plots.

ninetycvtencgwaterSCV=y(:,1); ninetycvtencgwaterSCG=y(:,2);ninetycvtencgwaterICV=y(:,3);ninetycvtencgwaterICG=y(:,4);ninetycvtencgwaterDCV=y(:,5); ninetycvtencgwaterDCG=y(:,6);ninetycvtencgwaterP=y(:,7);



