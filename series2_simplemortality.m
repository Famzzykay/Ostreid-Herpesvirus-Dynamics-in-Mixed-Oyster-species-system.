LW=3;FS=16;FW='demi';

% Figure 1: 4 subplots S, I, D, P 

figure
  % FIFTYFIFTY
subplot(2,2,1)
plot(fiftyfiftyt, fiftyfiftySCV,'b-', fiftyfiftyt, fiftyfiftySCG,'r-','LineWidth',LW )
title('Susceptibles','FontSize',FS,'FontWeight',FW)
legend({'50%C.V', '50% C.G'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)  
  
subplot(2,2,2)
plot(fiftyfiftyt, fiftyfiftyICV,'b-', fiftyfiftyt, fiftyfiftyICG,'r','LineWidth',LW) 
title('Infected','FontSize',FS,'FontWeight',FW)
legend({'50% C.V.', '50% C.G.'})
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

fiftytotalCV= fiftyfiftySCV+fiftyfiftyICV+fiftyfiftyDCV;
fiftytotalCG= fiftyfiftySCG+fiftyfiftyICG+fiftyfiftyDCG;
fiftyCVstraintotal=fiftyfiftySCVstrain + fiftyfiftyICVstrain + fiftyfiftyDCVstrain;
fiftyCGstraintotal=fiftyfiftySCGstrain + fiftyfiftyICGstrain + fiftyfiftyDCGstrain;


percfiftyDCV= fiftyfiftyDCV./fiftytotalCV *100;
percfiftyDCG=fiftyfiftyDCG./fiftytotalCG * 100;
percfiftyDCVstrain= fiftyfiftyDCVstrain./fiftyCVstraintotal *100;
percfiftyDCGstrain= fiftyfiftyDCGstrain./fiftyCGstraintotal *100;


plot(fiftyfiftyt ,percfiftyDCV,'b-',fiftyfiftyt, percfiftyDCG,'r-','LineWidth',2);
title('Cumulative Mortality(%)','FontSize',FS,'FontWeight',FW)
legend({'50%C.V.', '50% C.G.'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Mortality(%)','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)



subplot (2,2,4)
plot(fiftyfiftyt,fiftyfiftyP,'g-', 'LineWidth',LW)
title('Particles','FontSize',FS,'FontWeight',FW)
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Pathogens m^{-3}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)



% C.Gigas Monoculture
figure()
subplot(2,2,1)
plot(monoCGt, monoSCG, 'k','LineWidth',LW )
title('Susceptibles', 'FontSize', FS,'FontWeight',FW)
%legend({'Sus CG'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW) 
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)  
  
subplot(2,2,2)
plot(monoCGt, monoICG, 'k', 'LineWidth',LW) 
title('Infected','FontSize',FS,'FontWeight',FW)
%legend({'Inf C.G.'},'Location','best')
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 

subplot(2,2,3)
monoprevCG= monoSCG+monoICG+monoDCG;
monocummortCG = monoDCG./ monoprevCG *100;
plot( monoCGt, monocummortCG,'k-','LineWidth',2);
xlim([1,50])
title('Cumulative Mortality(%)','FontSize',FS,'FontWeight',FW)
%legend({'C.Gigas'} ,'Location', 'best')
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Mortality(%)','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)

subplot(2,2,4)
plot( monoCGt, monoCGP, 'k--','LineWidth',LW)
title('Particles','FontSize',FS,'FontWeight',FW)
%legend({'Inf.Path.'},'Location', 'Best')
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Pathogens m^{-3}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)


%plot(monoCVt, monoDCV,'b-', monoCGt, monoDCG, 'r', monoCGtF4, monoDCGF4, 'r--', 'LineWidth',LW);
%title('MONOCULTURE Dead','FontSize',FS,'FontWeight',FW)
%legend({'Dead C.Virginica', 'Dead C.Gigas', 'Dead C.Gigas F4'})
%xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
%ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
%set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 







figure
  % NINETYCGTENCV
subplot(2,2,1)
plot(ninetycgtencvt, ninetycgtencvSCV,'b-', ninetycgtencvt, ninetycgtencvSCG,'r', 'LineWidth',LW )
title('Susceptibles','FontSize',FS,'FontWeight',FW)
legend({'10% CV', '90% CG'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)  
  
subplot(2,2,2)
plot(ninetycgtencvt, ninetycgtencvICV,'b-', ninetycgtencvt, ninetycgtencvICG,'r', 'LineWidth',LW) 
title('Infected','FontSize',FS,'FontWeight',FW)
legend({'10% CV', '90% CG'})
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

ninetycgprevCV= ninetycgtencvSCV + ninetycgtencvICV + ninetycgtencvDCV;
ninetycgprevCG= ninetycgtencvSCG + ninetycgtencvICG + ninetycgtencvDCG;

ninetycgcummortCV= ninetycgtencvDCV./ninetycgprevCV * 100;
ninetycgcummortCG= ninetycgtencvDCG./ninetycgprevCG * 100;

plot(ninetycgtencvt , ninetycgcummortCV,'b-', ninetycgtencvt, ninetycgcummortCG,'r-', 'LineWidth',2);
title('Cumulative Mortality(%)','FontSize',FS,'FontWeight',FW)
legend({'10% CV', '90% CG'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Mortality(%)','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)



subplot (2,2,4)
plot(ninetycgtencvt,ninetycgtencvP,'g-','LineWidth',LW)
title('Particles','FontSize',FS,'FontWeight',FW)
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Pathogens m^{-3}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)






figure
  % NINETYCVTENCG
subplot(2,2,1)
plot(ninetycvtencgt, ninetycvtencgSCV,'b-', ninetycvtencgt, ninetycvtencgSCG,'r', 'LineWidth',LW )
title('Susceptibles','FontSize',FS,'FontWeight',FW)
legend({'90% CV', '10% CG'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)  
  
subplot(2,2,2)
plot(ninetycvtencgt, ninetycvtencgICV,'b-', ninetycvtencgt, ninetycvtencgICG,'r', 'LineWidth',LW) 
title('Infected','FontSize',FS,'FontWeight',FW)
legend({'90% CV', '10% CG'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 

subplot(2,2,3)
ninetycvprevCV= ninetycvtencgICV + ninetycvtencgSCV + ninetycvtencgDCV;
ninetycvprevCG= ninetycvtencgICG + ninetycvtencgSCG + ninetycvtencgDCG;

ninetycvcummortCV= ninetycvtencgDCV./ninetycvprevCV *100;
ninetycvcummortCG=  ninetycvtencgDCG./ninetycvprevCG *100;

plot(ninetycvtencgt , ninetycvcummortCV,'b-', ninetycvtencgt, ninetycvcummortCG,'r-', 'LineWidth',2);
title('Cumulative Mortality(%)','FontSize',FS,'FontWeight',FW)
legend({'90% CV', '10% CG'})
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
title('Particles','FontSize',FS,'FontWeight',FW)
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Pathogens m^{-3}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)




figure
  % NINETYCVTENCGwater
subplot(2,2,1)
plot(ninetycvtencgt, ninetycvtencgSCV,'b-', ninetycvtencgt, ninetycvtencgSCG,'r', ninetycvtencgwatert, ninetycvtencgwaterSCV, 'b--', ninetycvtencgwatert, ninetycvtencgwaterSCG, 'r--', 'LineWidth',LW )
title('Susceptibles','FontSize',FS,'FontWeight',FW)
legend({'90% CVc', '10% CGc','90% CVw', '10% CGw'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)  
  
subplot(2,2,2)
plot(ninetycvtencgt, ninetycvtencgICV,'b-', ninetycvtencgt, ninetycvtencgICG,'r', ninetycvtencgwatert, ninetycvtencgwaterICV, 'b--', ninetycvtencgwatert, ninetycvtencgwaterICG, 'r--', 'LineWidth',LW) 
title('Infected','FontSize',FS,'FontWeight',FW)
legend({'90% CVc', '10% CGc','90% CVw', '10% CGw'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 

subplot(2,2,3)

ninetycvprevCVwater= ninetycvtencgwaterICV + ninetycvtencgwaterSCV + ninetycvtencgwaterDCV;
ninetycvprevCGwater= ninetycvtencgwaterICG + ninetycvtencgwaterICG + ninetycvtencgwaterDCG;

ninetycvcummortCVwater = ninetycvtencgwaterDCV./ninetycvprevCVwater *100;
ninetycvcummortCGwater = ninetycvtencgwaterDCG./ninetycvprevCGwater *100;

plot(ninetycvtencgwatert , ninetycvcummortCVwater,'b-', ninetycvtencgwatert, ninetycvcummortCGwater,'r-', 'LineWidth',2);
title('Cumulative Mortality(%)','FontSize',FS,'FontWeight',FW)
legend({'90% CV', '10% CG'})
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
title('Particles','FontSize',FS,'FontWeight',FW)
legend({'CVc', 'CVw'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Pathogens m^{-3}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)











%SIXTYCGFORTYCV
figure
subplot(2,2,1)
plot(sixtycgfortycvt, sixtycgfortycvSCV,'b-', sixtycgfortycvt, sixtycgfortycvSCG,'r', 'LineWidth',LW )
title('Susceptibles','FontSize',FS,'FontWeight',FW)
legend({'40% CV', '60% CG'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)  
  
subplot(2,2,2)
plot(sixtycgfortycvt, sixtycgfortycvICV,'b-', sixtycgfortycvt, sixtycgfortycvICG,'r', 'LineWidth',LW) 
title('Infected','FontSize',FS,'FontWeight',FW)
legend({'40% CV', '60% CG'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 

subplot(2,2,3)

fortycvprevCV= sixtycgfortycvICV + sixtycgfortycvSCV + sixtycgfortycvDCV;
fortycvprevCG= sixtycgfortycvICG + sixtycgfortycvSCG + sixtycgfortycvDCG;

fortycvcummortCV= sixtycgfortycvDCV./ fortycvprevCV* 100;
fortycvcummortCG= sixtycgfortycvDCG./ fortycvprevCG* 100;

plot(sixtycgfortycvt , fortycvcummortCV,'b-', sixtycgfortycvt, fortycvcummortCG,'r-', 'LineWidth',2);
title('Cumulative Mortality(%)','FontSize',FS,'FontWeight',FW)
legend({'40% CV', '60% CG'})
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
title('Particles','FontSize',FS,'FontWeight',FW)
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Pathogens m^{-3}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)



%SIXTYCVFORTYCG
figure
subplot(2,2,1)
plot(sixtycvfortycgt, sixtycvfortycgSCV,'b-', sixtycvfortycgt, sixtycvfortycgSCG,'r', 'LineWidth',LW )
title('Susceptibles','FontSize',FS,'FontWeight',FW)
legend({'60% CV', '40% CG'})
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

sixtycvprevCV= sixtycvfortycgICV +sixtycvfortycgSCV + sixtycvfortycgDCV;
sixtycvprevCG= sixtycvfortycgICG +sixtycvfortycgSCG + sixtycvfortycgDCG;

sixtycvcummortCV=  sixtycvfortycgDCV./sixtycvprevCV*100;
sixtycvcummortCG=  sixtycvfortycgDCG./sixtycvprevCG*100;

plot(sixtycvfortycgt , sixtycvcummortCV,'b-', sixtycvfortycgt, sixtycvcummortCG,'r-', 'LineWidth',LW);
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
plot(sixtycvfortycgt, sixtycvfortycgP,'g-','LineWidth',LW)
title('Particles','FontSize',FS,'FontWeight',FW)
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Pathogens m^{-3}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)







% CGF4
% C.Virginica and C.Gigas independently
figure()
subplot(2,2,1)
plot( monoCGtF4, monoSCGF4, 'k-','LineWidth',LW )
title('Susceptibles', 'FontSize', FS,'FontWeight',FW)
% legend({'Sus C.V.', 'Sus C.G.', 'Sus C.G. F4'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW) 
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)  
  
subplot(2,2,2)
plot( monoCGtF4, monoICGF4, 'k-','LineWidth',LW) 
title('Infected','FontSize',FS,'FontWeight',FW)
%legend({'Mono.Inf. CG'},'Location','best')
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 

subplot(2,2,3)
monoprevCGF4= monoSCGF4 + monoICGF4 + monoDCGF4;
monocummortCGF4 =monoDCGF4./ monoprevCGF4*100;
plot( monoCGtF4, monocummortCGF4, 'k-', 'LineWidth',2);
xlim([1,50])
title('Cumulative Mortality(%)','FontSize',FS,'FontWeight',FW)
%legend({'CGF4mono'} ,'Location', 'best')
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Mortality(%)','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)

subplot(2,2,4)
plot(monoCGtF4, monoCGPF4, 'k--','LineWidth',LW)
title('Particles','FontSize',FS,'FontWeight',FW)
%legend({'Inf.Path.F4'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Pathogens m^{-3}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)



% CVirginica F1 monoculture
% C.Virginica 
figure()
subplot(2,2,1)
plot(monoCVt, monoSCV,'k-','LineWidth',LW )
title('Susceptibles', 'FontSize', FS,'FontWeight',FW)
%legend({'Mono. Sus. CV'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW) 
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)  
  
subplot(2,2,2)

plot(monoCVt, monoICV,'k-', 'LineWidth',LW) 
title('Infected','FontSize',FS,'FontWeight',FW)
%legend({'Inf. C.V.'},'Location','best')
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Individuals m^{-2}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW) 

subplot(2,2,3)

monoprevCV= monoSCV+monoICV+monoDCV;
monoprevCG= monoSCG+monoICG+monoDCG;
monoprevCGF4= monoSCGF4 + monoICGF4 + monoDCGF4;

monocummortCV = monoDCV./ monoprevCV *100;
monocummortCG = monoDCG./ monoprevCG *100;
monocummortCGF4 =monoDCGF4./ monoprevCGF4*100;

plot(monoCVt , monocummortCV,'k-', 'LineWidth',2);
xlim([1,50])
title('Cumulative Mortality(%)','FontSize',FS,'FontWeight',FW)
%legend({'C.V.Mono', },'Location', 'best')
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Mortality(%)','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)


subplot(2,2,4)
plot(monoCVt, monoCVP, 'g--','LineWidth',LW)
title('Particles','FontSize',FS,'FontWeight',FW)
%legend({'Inf.Path.'},'Location', 'Best')
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Pathogens m^{-3}','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)