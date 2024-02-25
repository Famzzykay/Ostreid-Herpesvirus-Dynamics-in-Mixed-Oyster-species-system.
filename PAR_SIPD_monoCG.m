function PAR = PAR_SIPD_monoCG

%   define model parameters and values
PAR.case = '1';

PAR.depth = 1.0;   %   vertical dimension of the volume (m)

PAR.CGPinfect = 0.648 * 10^-6.4; 
PAR.CVPinfect = 0.1667 * 10^-6;

PAR.ICGmort = 1.000;  % see for adjustment on writing

PAR.CGNatmort = 4.6 *10^-2; % Marlene, 1986 CVms
PAR.CVNatmort = 3*10^-4;  % bidegian

PAR.CGgrowth = 2.2*10^-2; %CVgroS
PAR.CVgrowth = 2 *10^-4; %CGgroS

% decay rate of dead animals  [1/day] (scavenging, decomposition...) (toral decay in 5 days=0.2)
PAR.Ddecay = 0.2; % d  releases all in 5 days

% Removal/ decay rate of infectious particles from environment  [1/day] r
PAR.Premove = 0.5;

PAR.ICGPburden = 2.322*10^2; %per day 490/6 
PAR.ICVPburden = 2.89*10^2 ; % CGbI % friedman 2020

PAR.DCGPburden = 5.91*10^5;
PAR.DCVPburden = 0.83*10^8; 


% Using same release rate for both species per day from Bidegain/Fisheries Research; 2017
PAR.ICGPrelease= 0.007; %CVcS
PAR.ICVPrelease= 0.007; %CVcI
PAR.DCGPrelease= 0.2;
PAR.DCVPrelease= 0.2;

%Diapedesis
PAR.ICVdiaped = 2*10^-1; %CV
PAR.ICGdiaped = 2*10^-1;



