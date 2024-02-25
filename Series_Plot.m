LW=3;FS=16;FW='demi';

% Figure 1: 4 subplots S, I, D, P 

figure
  % FIFTYFIFTY
subplot(2,2,1)
plot(fiftyfiftyt, fiftyfiftySCV,'b-', fiftyfiftyt, fiftyfiftySCG,'r-', fiftyfiftytstraint, fiftyfiftySCVstrain, 'b--','LineWidth',LW )
title('Susceptibles','FontSize',FS,'FontWeight',FW)
legend({'50%C.V', '50% C.G', '50%Strain2'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)  
  
subplot(2,2,2)
plot(fiftyfiftyt, fiftyfiftyICV,'b-', fiftyfiftyt, fiftyfiftyICG,'r', fiftyfiftytstraint, fiftyfiftyICVstrain, 'b--', 'LineWidth',LW) 
title('Infected','FontSize',FS,'FontWeight',FW)
legend({'50% C.V.', '50% C.G.','50%Strain2'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 

subplot(2,2,3)
%plot(fiftyfiftyt, fiftyfiftyDCV,'b-', fiftyfiftyt, fiftyfiftyDCG,'r', fiftyfiftytstraint, fiftyfiftyDCVstrain, 'b--','LineWidth',LW)
%title('Deads','FontSize',FS,'FontWeight',FW)
%legend({'50%C.Virginica', '50% C.Gigas', '50%CV&CG+AUSStrain' })
%xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
%ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
%set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 
tinny=0.001;
fiftyprevCV=(fiftyfiftyICV)+tinny./(fiftyfiftyICV+fiftyfiftySCV+tinny).*100;
fiftyprevCG=(fiftyfiftyICG)+tinny./(fiftyfiftyICG+fiftyfiftySCG+tinny).*100;
fiftyprevDCVstrain=(fiftyfiftyICVstrain)+tinny./(fiftyfiftyICVstrain+fiftyfiftySCVstrain+tinny).*100;
fiftyprevDCGstrain=(fiftyfiftyICGstrain)+tinny./(fiftyfiftyICGstrain+fiftyfiftySCGstrain+tinny).*100;


fiftycummortCV=fiftyprevCV*PAR.ICVmort *100;
fiftycummortCG=fiftyprevCG*PAR.ICGmort *100;
fiftycummortCVstrain= fiftyprevDCVstrain*PAR_SIPDanotherstrain().ICVmort.*100;
fiftycummortCGstrain= fiftyprevDCGstrain*PAR_SIPDanotherstrain().ICGmort*100;

plot(fiftyfiftyt ,fiftycummortCV,'b-',fiftyfiftyt, fiftycummortCG,'r-', fiftyfiftytstraint, fiftycummortCVstrain, 'b--', fiftyfiftytstraint, fiftycummortCGstrain, 'r--', 'LineWidth',2);
title('Cumulative Mortality(%)','FontSize',FS,'FontWeight',FW)
legend({'50%C.V.', '50% C.G.', '50%Strain2CV','50%Strain2CG'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Mortality(%)','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)



subplot (2,2,4)
plot(fiftyfiftyt,fiftyfiftyP,'g-', fiftyfiftytstraint, fiftyfiftyPstrain, 'g--','LineWidth',LW)
title('Inf. Particles', '50%Strain2','FontSize',FS,'FontWeight',FW)
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Pathogens m^{-3}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)



% MONOCULTURE CONDITIONS
% C.Virginica and C.Gigas independently
figure()
subplot(2,2,1)
plot(monoCVt, monoSCV,'b-', monoCGt, monoSCG, 'r', monoCGtF4, monoSCGF4, 'r--','LineWidth',LW )
title('MONOCULTURE Susceptibles', 'FontSize', FS,'FontWeight',FW)
legend({'Sus C.V.', 'Sus C.G.', 'Sus C.G. F4'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW) 
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)  
  
subplot(2,2,2)
ICGplot= monoICG+PAR.Ddecay*monoICG;

plot(monoCVt, monoICV,'b-', monoCGt, ICGplot, 'r', monoCGtF4, monoICGF4, 'r--','LineWidth',LW) 
title('MONOCULTURE Infected','FontSize',FS,'FontWeight',FW)
legend({'Inf. C.V.', 'Inf C.G.', 'Inf. C.G.F4'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 

subplot(2,2,3)

monoprevCV=(monoICV)+tinny./(monoICV+monoSCV+tinny).*100;
monoprevCG=(monoICG)+tinny./(monoICG+monoSCG+tinny).*100;
monoprevCGF4=(monoICGF4)+tinny./(monoICGF4+monoSCGF4+tinny).*100;

monocummortCV=monoprevCV*PAR.ICVmort *100;
monocummortCG=monoprevCG*PAR.ICGmort *100;
monocummortCGF4= monoprevCGF4*PAR_SIPDmonocultureF4().ICVmort.*100;

plot(monoCVt , monocummortCV,'b-', monoCGt, monocummortCG,'r-', monoCGtF4, monocummortCGF4, 'b--', 'LineWidth',2);
title('Cumulative Mortality(%)','FontSize',FS,'FontWeight',FW)
legend({'C.V.Mono', 'C.G. Mono', 'CGF4mono'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Mortality(%)','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)



%plot(monoCVt, monoDCV,'b-', monoCGt, monoDCG, 'r', monoCGtF4, monoDCGF4, 'r--', 'LineWidth',LW);
%title('MONOCULTURE Dead','FontSize',FS,'FontWeight',FW)
%legend({'Dead C.Virginica', 'Dead C.Gigas', 'Dead C.Gigas F4'})
%xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
%ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
%set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 






figure
subplot(2,2,1)
plot( monoCGtF4, monoCGPF4, 'g-+', monoCGt, monoCGP, 'g--','LineWidth',LW)
title('MONOCULTURE Pathogens' ,'FontSize',FS,'FontWeight',FW)
legend({'Particles C.G.MonoF4', 'Particles: C.G.MonoF1'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Pathogens m^{-3}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)

subplot(2,2,2)
plot(monoCVt, monoCVP, 'g--','LineWidth',LW)
title('Infectious Particles','FontSize',FS,'FontWeight',FW)
legend({'Particles: Mono. C.Virginica'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Pathogens m^{-3}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)






figure
  % NINETYCGTENCV
subplot(2,2,1)
plot(ninetycgtencvt, ninetycgtencvSCV,'b-', ninetycgtencvt, ninetycgtencvSCG,'r', 'LineWidth',LW )
title('Susceptibles','FontSize',FS,'FontWeight',FW)
legend({'10%C.V.', '90%C.G.'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)  
  
subplot(2,2,2)
plot(ninetycgtencvt, ninetycgtencvICV,'b-', ninetycgtencvt, ninetycgtencvICG,'r', 'LineWidth',LW) 
title('Infected','FontSize',FS,'FontWeight',FW)
legend({'10%C.V.', '90%C.G.'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 

subplot(2,2,3)
%plot(ninetycgtencvt, ninetycgtencvDCV,'b-', ninetycgtencvt, ninetycgtencvDCG,'r','LineWidth',LW)
%title('Deads','FontSize',FS,'FontWeight',FW)
%legend({'10%C.Virginica', '90%C.Gigas'})
%xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
%ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
%set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 

ninetycgprevCV=(ninetycgtencvICV)+tinny./(ninetycgtencvICV+ninetycgtencvSCV+tinny).*100;
ninetycgprevCG=(ninetycgtencvICG)+tinny./(ninetycgtencvICG+ninetycgtencvSCG+tinny).*100;

ninetycgcummortCV=ninetycgprevCV*PAR.ICVmort *100;
ninetycgcummortCG=ninetycgprevCG*PAR.ICGmort *100;

plot(ninetycgtencvt , ninetycgcummortCV,'b-', ninetycgtencvt, ninetycgcummortCG,'r-', 'LineWidth',2);
title('Cumulative Mortality(%)','FontSize',FS,'FontWeight',FW)
legend({'10%C.V.', '90%C.G.'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Mortality(%)','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)



subplot (2,2,4)
plot(ninetycgtencvt,ninetycgtencvP,'g-','LineWidth',LW)
title('Infectious Particles','FontSize',FS,'FontWeight',FW)
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Pathogens m^{-3}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)






figure
  % NINETYCVTENCG
subplot(2,2,1)
plot(ninetycvtencgt, ninetycvtencgSCV,'b-', ninetycvtencgt, ninetycvtencgSCG,'r', 'LineWidth',LW )
title('Susceptibles','FontSize',FS,'FontWeight',FW)
legend({'90%C.V.', '10%C.G.'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)  
  
subplot(2,2,2)
plot(ninetycvtencgt, ninetycvtencgICV,'b-', ninetycvtencgt, ninetycvtencgICG,'r', 'LineWidth',LW) 
title('Infected','FontSize',FS,'FontWeight',FW)
legend({'90%C.V.', '10%C.G.'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 

subplot(2,2,3)
ninetycvprevCV=(ninetycvtencgICV)+tinny./(ninetycvtencgICV+ninetycvtencgSCV+tinny).*100;
ninetycvprevCG=(ninetycvtencgICG)+tinny./(ninetycvtencgICG+ninetycvtencgSCG+tinny).*100;

ninetycvcummortCV=ninetycvprevCV*PAR.ICVmort *100;
ninetycvcummortCG=ninetycvprevCG*PAR.ICGmort *100;

plot(ninetycvtencgt , ninetycvcummortCV,'b-', ninetycvtencgt, ninetycvcummortCG,'r-', 'LineWidth',2);
title('Cumulative Mortality(%)','FontSize',FS,'FontWeight',FW)
legend({'90%C.V.', '10%C.G.'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Mortality(%)','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)

%plot(ninetycvtencgt, ninetycvtencgDCV,'b-', ninetycvtencgt, ninetycvtencgDCG,'r','LineWidth',LW)
%title('Deads','FontSize',FS,'FontWeight',FW)
%legend({'90%C.Virginica', '10%C.Gigas'})
%xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
%ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
%set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 

subplot (2,2,4)
plot(ninetycvtencgt, ninetycvtencgP,'g-','LineWidth',LW)
title('Infectious Particles','FontSize',FS,'FontWeight',FW)
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Pathogens m^{-3}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)




figure
  % NINETYCVTENCGwater
subplot(2,2,1)
plot(ninetycvtencgt, ninetycvtencgSCV,'b-', ninetycvtencgt, ninetycvtencgSCG,'r', ninetycvtencgwatert, ninetycvtencgwaterSCV, 'b--', ninetycvtencgwatert, ninetycvtencgwaterSCG, 'r--', 'LineWidth',LW )
title('Susceptibles','FontSize',FS,'FontWeight',FW)
legend({'90%C.Virginica: C', '10%C.Gigas:C','90%C.Virginica: W', '10%C.Gigas:W'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)  
  
subplot(2,2,2)
plot(ninetycvtencgt, ninetycvtencgICV,'b-', ninetycvtencgt, ninetycvtencgICG,'r', ninetycvtencgwatert, ninetycvtencgwaterICV, 'b--', ninetycvtencgwatert, ninetycvtencgwaterICG, 'r--', 'LineWidth',LW) 
title('Infected','FontSize',FS,'FontWeight',FW)
legend({'90%C.V.C', '10%C.G.C','90%C.V.:W', '10%C.G.W'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 

subplot(2,2,3)

ninetycvprevCVwater=(ninetycvtencgwaterICV)+tinny./(ninetycvtencgwaterICV+ninetycvtencgwaterSCV+tinny).*100;
ninetycvprevCGwater=(ninetycvtencgwaterICG)+tinny./(ninetycvtencgwaterICG+ninetycvtencgwaterSCG+tinny).*100;

ninetycvcummortCVwater=ninetycvprevCVwater*PAR.ICVmort *100;
ninetycvcummortCGwater=ninetycvprevCGwater*PAR.ICGmort *100;

plot(ninetycvtencgwatert , ninetycvcummortCVwater,'b-', ninetycvtencgwatert, ninetycvcummortCGwater,'r-', 'LineWidth',2);
title('Cumulative Mortality(%)','FontSize',FS,'FontWeight',FW)
legend({'90%C.V.', '10%C.G.'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Mortality(%)','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)


%plot(ninetycvtencgt, ninetycvtencgDCV,'b-', ninetycvtencgt, ninetycvtencgDCG,'r', ninetycvtencgwatert, ninetycvtencgwaterDCV, 'b--', ninetycvtencgwatert, ninetycvtencgwaterDCG, 'r--','LineWidth',LW)
%title('Deads','FontSize',FS,'FontWeight',FW)
%legend({'90%C.Virginica: C', '10%C.Gigas:C','90%C.Virginica: W', '10%C.Gigas:W'})
%xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
%ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
%set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 

subplot (2,2,4)
plot(ninetycvtencgt, ninetycvtencgP,'g-', ninetycvtencgwatert, ninetycvtencgwaterP,'g--', 'LineWidth',LW)
title('Infectious Particles by C', 'Infections Particles by W','FontSize',FS,'FontWeight',FW)
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Pathogens m^{-3}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)











%SIXTYCGFORTYCV
figure
subplot(2,2,1)
plot(sixtycgfortycvt, sixtycgfortycvSCV,'b-', sixtycgfortycvt, sixtycgfortycvSCG,'r', 'LineWidth',LW )
title('Susceptibles','FontSize',FS,'FontWeight',FW)
legend({'40%C.Virginica', '60%C.Gigas'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)  
  
subplot(2,2,2)
plot(sixtycgfortycvt, sixtycgfortycvICV,'b-', sixtycgfortycvt, sixtycgfortycvICG,'r', 'LineWidth',LW) 
title('Infected','FontSize',FS,'FontWeight',FW)
legend({'40%C.V.', '60%C.G.'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 

subplot(2,2,3)

fortycvprevCV=(sixtycgfortycvICV)+tinny./(sixtycgfortycvICV+sixtycgfortycvSCV+tinny).*100;
fortycvprevCG=(sixtycgfortycvICG)+tinny./(sixtycgfortycvICG+sixtycgfortycvSCG+tinny).*100;

fortycvcummortCV=fortycvprevCV*PAR.ICVmort *100;
fortycvcummortCG=fortycvprevCG*PAR.ICVmort *100;

plot(sixtycgfortycvt , fortycvcummortCV,'b-', sixtycgfortycvt, fortycvcummortCG,'r-', 'LineWidth',2);
title('Cumulative Mortality(%)','FontSize',FS,'FontWeight',FW)
legend({'40%C.V.', '60%C.G.'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Mortality(%)','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)



%plot(sixtycgfortycvt, sixtycgfortycvDCV,'b-', sixtycgfortycvt, sixtycgfortycvDCG,'r','LineWidth',LW)
%title('Deads','FontSize',FS,'FontWeight',FW)
%legend({'40%C.Virginica', '60%C.Gigas'})
%xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
%ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
%set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 

subplot (2,2,4)
plot(sixtycgfortycvt, sixtycgfortycvP,'g-','LineWidth',LW)
title('Infectious Particles','FontSize',FS,'FontWeight',FW)
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Pathogens m^{-3}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)



%SIXTYCVFORTYCG
figure
subplot(2,2,1)
plot(sixtycvfortycgt, sixtycvfortycgSCV,'b-', sixtycvfortycgt, sixtycvfortycgSCG,'r', 'LineWidth',LW )
title('Susceptibles','FontSize',FS,'FontWeight',FW)
legend({'60%C.V.', '40%C.G.'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)  
  
subplot(2,2,2)
plot(sixtycvfortycgt, sixtycvfortycgICV,'b-', sixtycvfortycgt, sixtycvfortycgICG,'r', 'LineWidth',LW) 
title('Infected','FontSize',FS,'FontWeight',FW)
legend({'60%C.V.', '40%C.G.'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 

subplot(2,2,3)

sixtycvprevCV=(sixtycvfortycgICV)+tinny./(sixtycvfortycgICV+sixtycvfortycgSCV+tinny).*100;
sixtycvprevCG=(sixtycvfortycgICG)+tinny./(sixtycvfortycgICG+sixtycvfortycgSCG+tinny).*100;

sixtycvcummortCV=sixtycvprevCV*PAR.ICVmort *100;
sixtycvcummortCG=sixtycvprevCG*PAR.ICVmort *100;

plot(sixtycvfortycgt , sixtycvcummortCV,'b-', sixtycvfortycgt, sixtycvcummortCG,'r-', 'LineWidth',2);
title('Cumulative Mortality(%)','FontSize',FS,'FontWeight',FW)
legend({'60%C.V.', '40%C.G.'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Mortality(%)','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)



%plot(sixtycgfortycvt, sixtycgfortycvDCV,'b-', sixtycgfortycvt, sixtycgfortycvDCG,'r','LineWidth',LW)
%title('Deads','FontSize',FS,'FontWeight',FW)
%legend({'40%C.Virginica', '60%C.Gigas'})
%xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
%ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
%set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 

subplot (2,2,4)
plot(sixtycgfortycvt, sixtycgfortycvP,'g-','LineWidth',LW)
title('Infectious Particles','FontSize',FS,'FontWeight',FW)
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Pathogens m^{-3}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)


