%% CASSINI GRAND FINALE
% Astrodynamics first assesment
% Authors: Casanovas, Marc
%          Gago, Edgar
%          Ibañez, Carlos
% Date 15/10/2020
% Subject: Astrodynamics
%
%% r2longlat
%
% Description
% Position vector to longitude and latitude
%
% Inputs
% r: position vector [m]
% r_: radius [m]
%
% Ouputs
% beta: latitude [rad]
% lamda: longitude [rad]
%
%% CODE

function [beta, lamda] = r2longlat(r,r_)

% Allocation for clearer code
x = r(1);
y = r(2);
z = r(3);

beta = asin(z/r_);
% Quadran check
if z<0
    beta = 2*pi + beta; 
end

lamda = asin(y/(r_*cos(beta)));
% Quadran check
if x<0
    lamda = pi - lamda; 
end

end