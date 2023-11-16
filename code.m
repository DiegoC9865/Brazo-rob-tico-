clear ; close ; clc; 

t_max= 9;
t = linspace(0,t_max, 270)';

ang = 2.5577517700442716 ;
ang2 = 1.2049106740701792;


%Posiciones iniciales

Q1A= linspace(pi/2, pi/2, 30); % G1 HOMBRO
Q2A= linspace(pi/2, pi/2, 30); % G2 HOMBRO
Q3A= linspace(pi/2, pi/2, 30); % G3 HOMBRO
Q4A= linspace(0, 0, 30); %G1 CODO
Q5A= linspace(pi, pi, 30); %G2 CODO
Q6A= linspace(0, 0, 30); % G1 MANO
Q7A= linspace(pi/2, pi/2, 30);  %G2 MANO

P1A = linspace(-pi+(pi/12) ,-pi+(pi/12) , 30);

% Movimiento de brazo 1 % 

Q1B= linspace(pi/2, ang, 90); % G1 HOMBRO
Q2B= linspace(pi/2, pi/2, 90); 
Q3B= linspace(pi/2, pi/2, 90); 
Q4B= linspace(0, ang2, 90); %G1 CODO
Q5B= linspace(pi, pi, 90); %%% 
Q6B= linspace(0, 0, 90); 
Q7B= linspace(pi/2, pi, 90);  %G2 MANO

P1B = linspace(-pi+(pi/12) ,-pi+(pi/12) , 90);

% Pinza Abre % 

Q1C= linspace(ang, ang, 30); % G1 HOMBRO
Q2C= linspace(pi/2, pi/2, 30); 
Q3C= linspace(pi/2, pi/2, 30); 
Q4C= linspace(ang2, ang2, 30); %G1 CODO
Q5C= linspace(pi, pi, 30); 
Q6C= linspace(0, 0, 30); 
Q7C= linspace(pi, pi, 30);  %G2 MANO

P1C = linspace( -pi+(pi/12), -pi/2, 30);  % movimiento pinza

% Pinza Cierra % 
Q1D= linspace(ang, ang, 30); % G1 HOMBRO
Q2D= linspace(pi/2, pi/2, 30); 
Q3D= linspace(pi/2, pi/2, 30); 
Q4D= linspace(ang2, ang2, 30); %G1 CODO
Q5D= linspace(pi, pi, 30);        
Q6D= linspace(0, 0, 30); 
Q7D= linspace(pi, pi, 30);  %G2 MANO

P1D = linspace(-pi/2 ,-pi+(pi/12), 30); 

% Movimiento de brazo 2 % 

Q1E= linspace(ang, pi/2, 90); % G1 HOMBRO
Q2E= linspace(pi/2, pi/2, 90); 
Q3E= linspace(pi/2, pi/2, 90); 
Q4E= linspace(ang2, 0, 90); %G1 CODO
Q5E= linspace(pi, pi, 90); 
Q6E= linspace(0, 0, 90); 
Q7E= linspace(pi, pi, 90);  %G2 MANO

P1E = linspace(-pi+(pi/12), -pi+(pi/12), 90);

%Montaje de Matrices 

Q1T = [Q1A Q1B Q1C Q1D Q1E]';
Q2T = [Q2A Q2B Q2C Q2D Q2E]';
Q3T = [Q3A Q3B Q3C Q3D Q3E]';
Q4T = [Q4A Q4B Q4C Q4D Q4E]';
Q5T = [Q5A Q5B Q5C Q5D Q5E]';
Q6T = [Q6A Q6B Q6C Q6D Q6E]';
Q7T = [Q7A Q7B Q7C Q7D Q7E]';
P1T = [P1A P1B P1C P1D P1E]';

Q1 = [t,Q1T];
Q2 = [t,Q2T];
Q3 = [t,Q3T];
Q4 = [t,Q4T];
Q5 = [t,Q5T];
Q6 = [t,Q6T];
Q7 = [t,Q7T];
P1 = [t,P1T];

%Q1 = [t,linspace(pi/2, ang, 200)'];  %g1 h
% Q2 = [t,linspace(pi/2, pi/2, 200)']; 
% Q3 = [t,linspace(pi/2, pi/2, 200)']; 
% Q4 = [t,linspace(0, ang2, 200)']; %g1 c
% Q5 = [t,linspace(0, 0, 200)']; 
% Q6 = [t,linspace(0, 0, 200)'];
% Q7 = [t,linspace(pi/2, pi, 200)']; %mu;eca


%Q1A = linspace(pi/2, ang, 100); 
%Q1B = linspace(ang, pi/2, 100); 
%Q1T = [Q1A Q1B]'; 
%Q1 = [t,Q1T];

sim("TZ.slx")

