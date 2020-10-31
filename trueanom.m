%% CASSINI GRAND FINALE
% Astrodynamics first assesment
% Authors: Casanovas, Marc
%          Gago, Edgar
%          Ibañez, Carlos
% Date 15/10/2020
% Subject: Astrodynamics
%
%% trueanom
%
% Description
% Computation of the true anomally 
%
% Inputs
% ibt: orbital elements [struct]
% E: eccentric anomaly [rad]
%
% Ouputs
% theta: true anomaly [rad]
%
%% CODE

function theta = trueanom(obt,E)
e = obt.e;

c1 = (1-e) / (1+e);
c1 = sqrt(c1);

c2 = tan(E/2);

theta = 2*atan(c2/c1);


end