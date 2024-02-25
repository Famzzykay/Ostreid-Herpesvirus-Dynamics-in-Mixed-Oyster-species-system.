
%  SIPD marine model
%
%   SIPD model for  a single population
%
%    The model considers a number of individuals in a population
%    The model considers a number of individuals in a (surface) 

%  
%    Units:
%      time is in days
%      populations are in number of individuals (/m^2)


global PAR

%   array indexes of variables
%  number of variables in the model

nVar=4; iSCV=1;  iICV=2;  iDCV=3;  iP=4;

PAR = PAR_SIPDanotherstrain;  %   define model parameters

y0=zeros(nVar,1);  %     initial conditions

y0(iSCV)=199;
y0(iICV)=1;
y0(iDCV)=0;
y0(iP)= 0;


tspan=[0 50];  %   time span,  simulation time


[monoCVstraint,y]=ode45(@RHS_SIPDmonoCV,tspan,y0);

%   Rename model results. New names for the plots.

monoSCVstrain=y(:,1); monoICVstrain=y(:,2);monoDCVstrain=y(:,3); monoCVPstrain=y(:,4);



