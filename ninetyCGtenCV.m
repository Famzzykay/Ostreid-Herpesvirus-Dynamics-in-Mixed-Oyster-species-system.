
%  SIPD marine model
%
%   SIPD model for  a single population
%
%    The model considers a number of individuals in a population

%
global PAR

%   array indexes of variables
%  number of variables in the model

nVar=7;iSCV=1; iSCG=2; iICV=3; iICG=4; iDCV=5; iDCG=6; iP=7;

PAR = PAR_SIPD;  %   define model parameters

y0=zeros(nVar,1);  %     initial conditions

y0(iSCV)=20;
y0(iSCG)=179;
y0(iICV)=1;
y0(iICG)=0;
y0(iDCV)=0;
y0(iDCG)=0;
y0(iP)= 0;


tspan=[0 50];  %   time span,  simulation time


[ninetycgtencvt,y]=ode45(@RHS_SIPD,tspan,y0);

%   Rename model results. New names for the plots.

ninetycgtencvSCV=y(:,1); ninetycgtencvSCG=y(:,2);ninetycgtencvICV=y(:,3);ninetycgtencvICG=y(:,4);ninetycgtencvDCV=y(:,5); ninetycgtencvDCG=y(:,6);ninetycgtencvP=y(:,7);


