
%
global PAR

%   array indexes of variables
%  number of variables in the model

nVar=4; iSCV=1;  iICV=2;  iDCV=3;  iP=4;

PAR = PAR_SIPDmonoCV;  %   define model parameters

y0=zeros(nVar,1);  %     initial conditions

y0(iSCV)=199;
y0(iICV)=1;
y0(iDCV)=0;
y0(iP)= 0;


tspan=[0 50];  %   time span,  simulation time


[monoCVt,y]=ode45(@RHS_SIPDmonoCV,tspan,y0);

%   Rename model results. New names for the plots.

monoSCV=y(:,1); monoICV=y(:,2);monoDCV=y(:,3); monoCVP=y(:,4);



