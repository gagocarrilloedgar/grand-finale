%% CASSINI GRAND FINALE
% Astrodynamics first assesment
% Authors: Casanovas, Marc
%          Gago, Edgar
%          Ibañez, Carlos
% Date 15/10/2020
% Subject: Astrodynamics
%
% Description
% Cere of the problem
clc; clear all; close all;


%% Inputs
Inputs

%% Orbital elements
% Julian Century
Cy = date2JC(y,m,d,h,min_,sec);

% Orbital elements
obt_s = saturnoe(Cy);
obt_e = earthoe(Cy);

% Solving Kepler's Equation [rad]
E_s = keplerslv(obt_s);
E_e = keplerslv(obt_e);

% True anomaly [rad]
theta_s = trueanom(obt_s,E_s);
theta_e = trueanom(obt_e,E_e);

% Compute Angular momentum
h_s = angmom(mus,obt_s);
h_e = angmom(mus,obt_e);

%% Compute V and r
[rv_s,v_s,r_s] = obt2stvec(mus,theta_s,h_s,obt_s);
[rv_e,v_e,r_e] = obt2stvec(mus,theta_e,h_e,obt_e);

rv = rv_s -rv_e;
r_ = norm(rv);

%% Compute RANN & Declination
[lat,long] = r2longlat(rv,r_);

% RAAN & delta 
% delta: declination [rad]
% RAAN: Rigth ascension [rad]
delta = asin(sin(lat)*cos(eps) + cos(lat)*sin(long)*sin(eps));
c1 = cos(lat)*cos(long);
c2 = cos(delta);
raan = acos(c1/c2); % [rad]
raan = 2*pi - raan;
raan = raan / 15; % --> 
