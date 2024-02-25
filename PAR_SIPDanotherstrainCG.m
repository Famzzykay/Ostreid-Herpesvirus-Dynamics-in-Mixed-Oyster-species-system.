function PAR = PAR_SIPDanotherstrainCG
%
%   define model parameters and values
PAR.case = '1';

PAR.depth = 1.0;   %   vertical dimension of the volume (m)


%  infection rate by contact with infectious particles
%  [infected produced/infectious particles/day]
 
%PAR.Pinfect = 0.0001 ; %Beta
%PAR.CVPinfect = 0.0648 * 10^-6;

PAR.CGPinfect = 0.648 * 10^-6.4; 

%PAR.ICGmort = 0.00128;
PAR.ICGmort = 2.3;



% see for adjustment on writing
PAR.ICGPburden = 3.322*10^2; %per day 490/6 

PAR.DCGPburden = 5.91*10^5;


PAR.CGNatmort = 4.6 *10^-2; % Marlene, 1986 CVms
PAR.CVNatmort = 3*10^-4;  % bidegian

PAR.CGgrowth = 2.2*10^-2; %CVgroS


PAR.Ddecay = 0.2; % d  releases all in 5 days
PAR.Premove = 0.5;

PAR.ICGPrelease= 0.007; %CVcS
PAR.DCGPrelease= 0.2;
PAR.ICGdiaped = 2*10^-1;
% to be changed later to see the influence of diapedesis on disease
% destruction by specie differences


