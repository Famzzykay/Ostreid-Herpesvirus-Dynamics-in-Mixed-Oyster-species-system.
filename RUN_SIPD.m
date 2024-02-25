
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

%
%     variables are 
%  y(1): S, susceptible, uninfected individuals [number/m^2]
%  y(2): I, infected individuals [number/m^2]
%  y(3): P, infectious particles (free-living pathogens, particles [number/m^3]

%  PAR is a structure containing the parameters for the model
%
%  PAR_SIPD.m sets the values of the various model parameters

%
global PAR

%   array indexes of variables
%  number of variables in the model

nVar=7;iSCV=1; iSCG=2; iICV=3; iICG=4; iDCV=5; iDCG=6; iP=7;

PAR = PAR_SIPD;  %   define model parameters

y0=zeros(nVar,1);  %     initial conditions

y0(iSCV)=100;
y0(iSCG)=99;
y0(iICV)=0;
y0(iICG)=1;
y0(iDCV)=0;
y0(iDCG)=0;
y0(iP)= 0;


tspan=[0 50];  %   time span,  simulation time


[fiftyfiftyt,y]=ode45(@RHS_SIPD, tspan,y0);
%   Rename model results. New names for the plots.

fiftyfiftySCV=y(:,1); fiftyfiftySCG=y(:,2);fiftyfiftyICV=y(:,3);fiftyfiftyICG=y(:,4);fiftyfiftyDCV=y(:,5); fiftyfiftyDCG=y(:,6);fiftyfiftyP=y(:,7);



