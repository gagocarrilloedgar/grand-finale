%% CASSINI GRAND FINALE
% Astrodynamics first assesment
% Authors: Casanovas, Marc
%          Gago, Edgar
%          Ibañez, Carlos
% Date 15/10/2020
% Subject: Astrodynamics
%
%% angmom
% Description
% Computation of the angular momentum
%
% Inputs
% mu: Sun's gravitational standar parameter [m3s-2]
% obt: orbital elments [struct]
%
% Ouputs
% h: angular momentum
%
%% CODE

function h = angmom(mu,obt)
au = 149597870700;
a = obt.a*au;
e = obt.e;

h = sqrt(mu*a*(1-e^2));
end