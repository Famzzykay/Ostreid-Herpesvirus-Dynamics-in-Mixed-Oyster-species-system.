function PAR = PAR_SIPDmonocultureF4
%
%   define model parameters and values
PAR.case = '1';

PAR.depth = 1.0;   %   vertical dimension of the volume (m)


%  infection rate by contact with infectious particles
%  [infected produced/infectious particles/day]
PAR.CGPinfect =  0.424*10^-6.4; 
%PAR.CGPinfect= 0.1667*10^-6.4;

%PAR.CGPinfect = 0.1667 * 10^-6;
%PAR.CGPinfect= 

 
% mortality rate of infected [1/day] CVmI
PAR.ICGmort = 1.000; % see for adjustment on writing
PAR.ICVmort= 0.020;

PAR.CGNatmort = 4.6 *10^-2; % Marlene, 1986 CVms
PAR.CVNatmort = 3*10^-4;  % bidegian


PAR.CGgrowth = 2.2*10^-2; %CVgroS
PAR.CVgrowth = 2 *10^-4; %CGgroS




% decay rate of dead animals  [1/day] (scavenging, decomposition...) (toral decay in 5 days=0.2)
PAR.Ddecay = 0.2; % d  releases all in 5 days

% Removal/ decay rate of infectious particles from environment  [1/day] r
PAR.Premove = 0.5;
% Average body burden of infectious particles in infected animals  [number of particles]
% QPCR data from Carolyn Friedman
%PAR.ICGPburden = 4.90*10^2;
%PAR.ICVPburden = 2.85*10^2;

PAR.ICGPburden = 2.322*10^2; %per day 490/6 
PAR.ICVPburden = 2.89*10^2 ; % CGbI % friedman 2020


PAR.DCGPburden = 5.91*10^4;
PAR.DCVPburden = 0.83*10^8; 

%PAR.DCGPburden = 1.95*10^1.16; %perday CGbD
%PAR.DCVPburden = 1.83*10^1; % perday


% Using same release rate for both species per day from Bidegain/Fisheries Research; 2017
PAR.ICGPrelease= 0.007; %CVcS
PAR.ICVPrelease= 0.007; %CVcI
PAR.DCGPrelease= 0.2;
PAR.DCVPrelease= 0.2;

%Diapedesis
PAR.ICVdiaped = 2*10^-1; %CV
PAR.ICGdiaped = 2*10^-1;
% to be changed later to see the influence of diapedesis on disease
% destruction by specie differences


