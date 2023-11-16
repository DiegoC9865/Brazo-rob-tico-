clear ; close ; clc; 


t_i= 2;
t = linspace(0,t_i, 100)';


Q1 = [t,linspace(pi/2, pi/2, 100)'];
Q2 = [t,linspace(pi/2, pi/2, 100)']; 
Q3 = [t,linspace(pi/2, pi/2, 100)']; 
Q4 = [t,linspace(0, 0, 100)'];
Q5 = [t,linspace(0, 0, 100)']; 
Q6 = [t,linspace(0, 0, 100)'];
Q7 = [t,linspace(pi/2, pi/2, 100)']; 


sim("TZ.slx")

