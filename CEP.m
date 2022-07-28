 clear;clc 
 COEFFICIENTS=[0.5 1 0 0 0 0 0 0 0 0 0 
      0.866 0 0 0 0 0 0 0 0 0 0 
      -0.5 0 0.5 1 0 0 0 0 0 0 0 
      -0.866 0 -0.866 0 0 0 0 0 0 0 0 
      0 -1 -0.5 0 0.5 1 0 0 0 0 0 
      0 0 0.866 0 0.866 0 0 0 0 0 0 
      0 0 0 -1 -0.5 0 0.5 1 0 0 0 
      0 0 0 0 -0.866 0 -0.866 0 0 0 0 
      0 0 0 0 0 1 -0.5 0 0.5 1 0
      0 0 0 0 0 0 0.866 0 0.866 0 0 
      0 0 0 0 0 0 0 -1 -0.5 0 0.5];
 CONSTANTS=[0
     -6
     0
     0
     0
     5
     0
     0
     0
     8
     0];
 Value_Of_Forces=COEFFICIENTS\CONSTANTS
%  fprintf('The Value Of F1 is %.5f \n',Value_Of_Forces(1))
%  fprintf('The Value Of F2 is %.5f \n',Value_Of_Forces(2))
%  fprintf('The Value Of F3 is %.5f \n',Value_Of_Forces(3))
%  fprintf('The Value Of F4 is %.5f \n',Value_Of_Forces(4))
%  fprintf('The Value Of F5 is %.5f \n',Value_Of_Forces(5))
%  fprintf('The Value Of F6 is %.5f \n',Value_Of_Forces(6))
%  fprintf('The Value Of F7 is %.5f \n',Value_Of_Forces(7))
%  fprintf('The Value Of F8 is %.5f \n',Value_Of_Forces(8))
%  fprintf('The Value Of F9 is %.5f \n',Value_Of_Forces(9))
%  fprintf('The Value Of F10 is %.5f \n',Value_Of_Forces(10))
%  fprintf('The Value Of F11 is %.5f \n',Value_Of_Forces(11))
% disp('F1'),(Value_Of_Forces(1))
% disp('F2'),(Value_Of_Forces(2))
% disp('F3'),(Value_Of_Forces(3))
% disp('F4'),(Value_Of_Forces(4))
% disp('F5'),(Value_Of_Forces(5))
% disp('F6'),(Value_Of_Forces(6))
% disp('F7'),(Value_Of_Forces(7))
% disp('F8'),(Value_Of_Forces(8))
% disp('F9'),(Value_Of_Forces(9))
% disp('F10'),(Value_Of_Forces(10))
% disp('F11'),(Value_Of_Forces(11))
% disp('F1');





 
     

