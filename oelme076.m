%==>OEL(Open Ended Lab) Assignment:-
%==>Question:-
%==>Part 1:-
%==>Data for EFI Engine:
rpm_EFIEngine =[1522 1691 1803 1898 2000];
bhp_EFIEngine=[4.029 4.916 5.644 5.800 6.025];
p_EFIEngine=polyfit(rpm_EFIEngine,bhp_EFIEngine,2);
BHP_EFIEngine=polyval(p_EFIEngine, rpm_EFIEngine);
%==>Data for Diesel Engine:
rpm_DieselEngine=[1517 1707 1922 2009 2224];
bhp_DieselEngine=[1.023 1.207 1.437 1.809 1.744];
p_DieselEngine=polyfit (rpm_DieselEngine, bhp_DieselEngine, 2);
BHP_DieselEngine=polyval(p_DieselEngine,rpm_DieselEngine);
%==> Data for Petrol Engine:
rpm_PetrolEngine=[994 1097 1200 1309 1395];
bhp_PetrolEngine=[0.823 0.785 1.853 1.911 1.841];
p_PetrolEngine=polyfit(rpm_PetrolEngine,bhp_PetrolEngine,2);
BHP_PetrolEngine=polyval(p_PetrolEngine,rpm_PetrolEngine);
disp(' part 01:')
%==>For Equations:
fprintf('Constants of EFI Engine: a=%f , b=%f,c=%f\n',p_EFIEngine(1),p_EFIEngine(2),p_EFIEngine(3))
fprintf('Constants of Diesel Engine: a=%f , b=%f,c=%f\n',p_DieselEngine(1),p_DieselEngine(2),p_DieselEngine(3))
fprintf('Constants of Petrol Engine: a=%f , b=%f,c=%f\n\n',p_PetrolEngine(1),p_PetrolEngine(2),p_PetrolEngine(3))
%==>part 02:
disp(' part 02:')
fprintf('Graph is displayed: \n\n')
figure
plot(rpm_EFIEngine,bhp_EFIEngine,'sb',rpm_EFIEngine,BHP_EFIEngine,'-r',rpm_DieselEngine,bhp_DieselEngine,'^k',rpm_DieselEngine,BHP_DieselEngine,'-b',rpm_PetrolEngine,bhp_PetrolEngine,'pm',rpm_PetrolEngine,BHP_PetrolEngine,'-g','linewidth',3)
grid on
xlabel('RPM'),ylabel('Power'),title('Observational datavs Calculated data')
legend('observational data','Calculation data')
%==>part 03:
disp(' part 03:')
error_EFIEngine =abs(bhp_EFIEngine-BHP_EFIEngine);
error_DieselEngine=abs(bhp_DieselEngine-BHP_DieselEngine);
error_PetrolEngine=abs(bhp_PetrolEngine-BHP_PetrolEngine);
A={'bhp_EFIEngine','BHP_EFIEngine','error_EFIEngine','bhp_DieselEngine','BHP_DieselEngine','error_DieselEngine','bhp_PetrolEngine','BHP_PetrolEngine','error_PetrolEngine'};
table=table(bhp_EFIEngine',BHP_EFIEngine',error_EFIEngine',bhp_DieselEngine',BHP_DieselEngine',error_DieselEngine',bhp_PetrolEngine',BHP_PetrolEngine',error_PetrolEngine','VariableNames',A);
disp(table)
%==>part 04:
disp(' part 04:')
e =@(a)p_EFIEngine(1)*a^2+p_EFIEngine(2)*a+p_EFIEngine(3);
BHP_EFIEngine1= e(1500)
d =@(b)p_DieselEngine(1)*b^2+p_DieselEngine(2)*b+p_DieselEngine(3);
BHP_DieselEngine1 = d(1500)
p =@(c)p_PetrolEngine(1)*c^2+p_PetrolEngine(2)*c+p_PetrolEngine(3);
BHP_PetrolEngine1 = p(1500) 
disp(' part 05:')
figure
subplot(3,1,1);
EFIEngine_l=polyfit(rpm_EFIEngine,bhp_EFIEngine,1);
EFIEngineBHP_l=polyval(EFIEngine_l,rpm_EFIEngine);
plot(rpm_EFIEngine,EFIEngineBHP_l,'-k',rpm_EFIEngine,BHP_EFIEngine,'-b','linewidth',3);
grid on
title({['Linear data vs Quadratic data'],['EFI Engine']});
legend('Linear data','Quadratic data');
subplot(3,1,2);
PetrolEngine_l=polyfit(rpm_DieselEngine,bhp_DieselEngine,1);
DieselEngineBHP_l=polyval(PetrolEngine_l,rpm_DieselEngine);
plot(rpm_DieselEngine,DieselEngineBHP_l,'-m',rpm_DieselEngine,BHP_DieselEngine,'-r','linewidth',3);
grid on
title('Diesel Engine');
ylabel('Power')
legend('Linear data','Quadratic data');
subplot(3,1,3);
PetrolEngine_l=polyfit(rpm_PetrolEngine,bhp_PetrolEngine,1);
PetrolEngineBHP_l=polyval(PetrolEngine_l,rpm_PetrolEngine);
plot(rpm_PetrolEngine,PetrolEngineBHP_l,'-c',rpm_PetrolEngine,BHP_PetrolEngine,'-y','linewidth',3);
grid on
legend('Linear data','Quadratic data');
title('Petrol Engine');
xlabel('rpm');
