LW=3;FS=16;FW='demi';


% total number of individuals
load('deadvalidation.mat')
load('debylolavalid.mat')
load('pathogenvalidation.mat')

%Lorgeil Data (C.Gigas cumm mort, Susceptible gen1)
deadday = ActualDataforValidationS3.timeday;
deadS1= ActualDataforValidationS3.SF11;
deadS2= ActualDataforValidationS3.SF14;
deadS3= ActualDataforValidationS3.SF15;

%Lorgeil Data (C.Gigas cumm mort, gen4)
deadR41= ActualDataforValidationS3.RF21;
deadR42= ActualDataforValidationS3.RF23;
deadR43= ActualDataforValidationS3.RF48;

%Friedman Data (Uvar cumm mortality)
deadtime= ActualDataforValidationS5.timeday;
deadCgigauvar= ActualDataforValidationS5.cgigas_uvar;
deadCvirguvar= ActualDataforValidationS5.cvirg_uvar;

%Strain2 AUS Var(unplotted)
timeday=ActualDataforValidationS5.timeday;
deadCvirgAus= ActualDataforValidationS5.cvirginica_ausvar;
deadCgigaAus= ActualDataforValidationS5.cgigas_ausvar;



monototalCG = monoSCG + monoICG + monoDCG; 
monototalCGF4= monoSCGF4+monoICGF4+monoDCGF4;
monototalCV = monoSCV + monoICV + monoDCV;
monototalCVstrain= monoSCVstrain + monoICVstrain + monoDCVstrain;
%monototalCGstrain= monoSCGstrain + monoICGstrain + monoDCGstrain;

% percentage of dead individuals
percDCG = monoDCG ./ monototalCG * 100; % percentage of dead individuals
percDCGF4= monoDCGF4./monototalCGF4 *100;
percDCV= monoDCV./monototalCV * 100;
%percDCVstrain= monoDCVstrain./monototalCVstrain * 100 ; 
%perDCGstrain= monoDCGstrain ./ monototalCGstrain * 100;


figure
subplot(2,2,2)
plot(monoCGt, percDCG, 'b', ...
    deadday, deadS2, '-o')  % 
xlim([1,50])
%title('Validation:Simulation 3', 'FontSize', FS, 'FontWeight',FW)
legend({'Model C.gigas', 'Real Data'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Mortality(%)','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)


subplot(2,2,3)
plot(monoCGtF4, percDCGF4, 'b', ...
    deadday, deadR41, '-o')
%title('Validation:Simulation 2','FontSize', FS, 'FontWeight',FW)
legend({'Model C.gigas', 'OsHV-1'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Mortality(%)','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)

subplot(2,2,1)
plot(monoCVt, percDCV, 'r-', ...
    deadtime, deadCvirguvar, '-ro')
%title('Validation:Simulation 1', 'FontSize', FS, 'FontWeight',FW)
legend({'Model C.virginica', 'Real Data'})
xlabel('Time (days)','FontSize',FS,'FontWeight',FW)
ylabel('Mortality(%)','FontSize',FS,'FontWeight',FW)
set(gca,'LineWidth',LW,'FontSize',FS,'FontWeight',FW)



