%Question#1 
clear all,clc 
for r=1:4 
for c=1:6 
A(r,c)=(2*r)-(3*c); 
end
end 
A

%Question#2 
v=input('Enter a vector:\n')
n=length(v); 
for i=1:n 
if v(i)>0 v(i)=2*v(i);
elseif v(i)<0 
    v(i)=3*v(i);
end 
end 
disp(['v_modified=']) 
disp([' ']) 


%Question#3 
clear all,clc 
NYC = [33 33 18 29 40 55 19 22 32 37 58 54 51 52 45 41 45 39 36 45 33 18 19 19 28 34 44 21 23 30 39]; DEN = [39 48 61 39 14 37 43 38 46 39 55 46 46 39 54 45 52 52 62 45 62 40 25 57 60 57 20 32 50 48 28]; 
%Part(a) 
Avg_NYC=round(mean(NYC)); 
Avg_DEN=round(mean(DEN)); 
fprintf('The average temperature of the month for New York City is: %g F.\n',Avg_NYC) 
fprintf('The average temperature of the month fot Denver city is: %gF.\n',Avg_DEN) 
%Part(b) 
x=NYC>Avg_NYC; 
n_NYC=sum(x);
y=DEN>Avg_DEN; 
n_DEN=sum(y); 
fprintf('During % g days the temperature in New York City was above the average.\n',n_NYC) 
fprintf('During % g days the temperature in Denver was above the average.\n',n_DEN) 
%Part(c) 
z=DEN>NYC; 
Number_of_days=sum(z); 
fprintf('During % g days the temperature in Denver was higher than in NewYork City.\n',Number_of_days)


%Question#4 
clear all,clc 
f_s=[0 1 1]; 
for k=4:25 
f_s(k)=f_s(k-1)+f_s(k-2)+f_s(k-3); 
end 
f_s

%Question#05 
clear all,clc 
x=[9 -1.5 13.4 13.3 -2.1 4.6 1.1 5 -6.1 10 0.2] 
for i=1:length(x);
[min_x,r]=min(x); 
sorted_x(i)=min(x); x(r)=[]; 
end 
sorted_x


% Question#6 
clear all,clc 
S=[72 81 44 68 90 53 80 75 74 65 50 92 85 69 41 73 70 86 61 65 79 94 69];
Av=round(mean(S)); Sd=round(std(S)) 
for i=1:length(S) 
if S(i)>=(Av+1.3*Sd) 
fprintf('%d%% Letter Grade A \n',S(i)) 
elseif ((Av+0.5*Sd)<=S(i)) & S(i)<(Av+1.3*Sd)
fprintf('%d%% Letter Grade B \n',S(i)) 
elseif ((Av-0.5*Sd)<=S(i)) & S(i)<(Av+0.5*Sd)
fprintf('%d%% Letter Grade C \n',S(i)) 
elseif ((Av-1.3*Sd)<=S(i)) & S(i)<(Av-0.5*Sd)
fprintf('%d%% Letter Grade D \n',S(i)) 
elseif S(i)<(Av-1.3*Sd)
fprintf('%d%% Letter Grade F \n',S(i))
end 
end 

% Question#7 
clear all,clc 
for n=100:999 x=fix(n/100);v=fix((n-100*x)/10); u=n-x*100-v*10; multi=x*v*u; add=6*(x+v+u);           
if multi == add n 
end 
end 


% Question#8 
clear all,clc 
W=input('Enter your weight in lb: ');
H=input('Enter your height in inches: ');
BMI=round(703*W/H^2,1);
if BMI==(18.5)&(BMI<=24.9)
    A='Normal';
elseif (BMI>=25) & (BMI<=29.9) 
    A='Overweight'; 
elseif BMI>=30 
    A='Obese'; 
end 
fprintf('Your BMI value is %0.1f , Which classifies you as %s \n',BMI,A)


% Question#9 
clear all,clc 
Car=input('Enter the type of car (Sedan or SUV): ','s');
N=input('Enter the Number of days: '); M=input('Enter the Number of miles driven: '); 
switch Car case 'Sedan' 
if (N<=6) & (M<=80*N) 
Cost=79*N; 
elseif (N<=6) & (M>80*N) 
Cost=79*N+(M-80*N)*0.69; 
elseif (N>=7) & (N<=29) & (M<=100*N) 
Cost=69*N; 
elseif (N>=7) & (N<=29) & (M>100*N) 
Cost=69*N+(M-100*N)*0.59; 
elseif (N>=30) & (M<=120*N) Cost=59*N; 
elseif (N>=30) & (M>120*N) Cost=59*N+(M-120*N)*0.49; end 
case 'SUV' 
    if (N<=6) & (M<=80*N) 
        Cost=84*N; 
    elseif (N<=6) & (M>80*N) 
        Cost=84*N+(M80*N)*0.74; 
    elseif (N>=7) & (N<=29) & (M<=100*N) 
        Cost=74*N; 
    elseif (N>=7) & (N<=29) & (M>100*N) 
        Cost=74*N+(M100*N)*0.64; 
    elseif (N>=30) & (M<=120*N) 
        Cost=64*N; 
    elseif (N>=30) & (M>120*N) 
        Cost=64*N+(M-120*N)*0.54; 
    end 
end  
fprintf('The cost of renting a car is %0.2f$. \n', Cost)


% Question#10 
clear all,clc 
n=input('numerical value for the size of area:'); 
units=input('Enter the current units(sqm, sqcm, sqin, sqft or sqyd):','s'); 
a=input('Enter the units to be converted (sqm, sqcm, sqin, sqft or sqyd):','s'); 
switch units case 'sqm' 
Asqm=n; 
case 'sqcm' 
Asqm=1E-4*n; 
case 'sqin' 
Asqm=(1/1550.0031)*n; 
case 'sqft' 
    Asqm=(1/10.7639)*n; 
case 'sqyd' 
    Asqm=(1/1.19599)*n; 
end 
switch a case 'sqm' 
    sqm=Asqm; 
    fprintf('%3.3f sqm\n',sqm) 
    case 'sqcm' 
        sqcm=1E4*Asqm; 
        fprintf('%3.3f sqcm\n',sqcm) 
    case 'sqin' 
        sqin=1550.0031*Asqm; 
        fprintf('%3.3f sqin\n',sqin) 
    case 'sqft' 
        sqft=10.7639*Asqm; 
        fprintf('%3.3f sqft\n',sqft) 
    case 'sqyd' 
        sqyd=1.19599*Asqm; 
        fprintf('%3.4f sqyd\n',sqyd) 
end 
