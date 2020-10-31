%% CASSINI GRAND FINALE
% Astrodynamics first assesment
% Authors: Casanovas, Marc
%          Gago, Edgar
%          Ibañez, Carlos
% Date 15/10/2020
% Subject: Astrodynamics
%
%% saturnoe
%
% Description
% Computation of the orbital elements using the Cy
%
% Inputs
% Cy: Julian Century
%
% Ouputs
% obtelmnt: orbital elements of Saturn [struct]
%
%% CODE

function obtelmnt = saturnoe(Cy)

% All the elements are in degrees minus the eccentricy and the
% semi major axis 

% Semi major axis UA
a = 9.53667594 - 0.00125060 * Cy; 

% Eccentricity [adim]
e = 0.05386179 - 0.00050991 * Cy; 

% Inclination to the ecliptic plane
i =  2.48599187 + 0.00193609*Cy; 

% Right ascension of the ascending nod (from sun)
omega = 113.66242448 - 0.28867794*Cy;

% Longitude of perihelion
w_ = 92.59887831 -  0.41897216*Cy; 

% Mean longitude
L = 49.95424423 +  1222.49362201*Cy; 

M = L - w_; %The mean anomaly
w = w_ - omega; %argument of the perihelion

% Struc allocation to easier management
obtelmnt = struct("a",a,"e",e,"i",i,"omega",omega,"w_",w_,"w",w,"L",L...
    ,"M",M);

end


