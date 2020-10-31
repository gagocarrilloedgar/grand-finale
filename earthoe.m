%% CASSINI GRAND FINALE
% Astrodynamics first assesment
% Authors: Casanovas, Marc
%          Gago, Edgar
%          Ibañez, Carlos
% Date 15/10/2020
% Subject: Astrodynamics
%
%% earthoe
%
% Description
% Computation of the orbital elements of the Earth using the Cy
%
% Inputs
% Cy: Julian Century
%
% Ouputs
% obtelmnt: orbital elements of Earth [struct]
%
%% CODE
function obtelmnt = earthoe(Cy)

% All the elements are in degrees minus the eccentricy and the
% semi major axis 

% Semi major axis UA
a = 1.00000261 + 0.00000562 * Cy; 

% Eccentricity [adim]
e = 0.01671123 + 0.00004392* Cy; 

% Inclination to the ecliptic plane
i =  -0.00001531 - 0.01294668*Cy; 

% Right ascension of the ascending nod (from sun)
omega = 0;

% Longitude of perihelion
w_ = 102.93768193 -  0.32327364*Cy; 

% Mean longitude
L = 100.46457166 + wrapTo360(35999.37244981*Cy); 

M = L - w_; %The mean anomaly
w = w_ - omega; %argument of the perihelion

% Struc allocation to easier management
obtelmnt = struct("a",a,"e",e,"i",i,"omega",omega,"w_",w_,"w",w,"L",L...
    ,"M",M);

end


