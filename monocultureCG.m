
%  SIPD marine model
%
%   SIPD model for  a single population
%
%    The model considers a number of individuals in a population

global PAR

%   array indexes of variables
%  number of variables in the model

nVar=4;iSCG=1; iICG=2;  iDCG=3; iP=4;

PAR = PAR_SIPD_monoCG;  %   define model parameters

y0=zeros(nVar,1);  %     initial conditions

y0(iSCG)=199;
y0(iICG)=1;
y0(iDCG)=0;
y0(iP)= 0;


tspan=[0 50];  %   time span,  simulation time



[monoCGt,y]=ode45(@RHS_SIPDmonoCG,tspan,y0);

%   Rename model results. New names for the plots.

 monoSCG=y(:,1);monoICG=y(:,2); monoDCG=y(:,3);monoCGP=y(:,4);



