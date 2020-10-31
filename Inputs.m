
%% CASSINI GRAND FINALE
% Astrodynamics first assesment
% Authors: Casanovas, Marc
%          Gago, Edgar
%          Ibañez, Carlos
% Date 15/10/2020
% Subject: Astrodynamics
%
%% Inputs
%
% Description
% Definition of the Cassini parameters making the assumption their
% position is the Saturn's one
% CODE

%% Date of the Grand finale
y = 2017; 
m = 9; 
d = 15; 
h = 0; 
min_=0; 
sec=0;

%% Planets physical constants
ms = 1.989e30;  % Sun's mass [kg]
G = 6.67408e-11; % Gravitational constat [kg-1m3s-2]
mus = ms*G; % Sun's gravitational standar parameter [m3s-2]
eps = deg2rad(23.44); % [rad] inclination between the 
                      % Eclcliptic plane and the Equatorial plane
