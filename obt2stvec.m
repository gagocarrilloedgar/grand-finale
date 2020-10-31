%% CASSINI GRAND FINALE
% Astrodynamics first assesment
% Authors: Casanovas, Marc
%          Gago, Edgar
%          Ibañez, Carlos
% Date 15/10/2020
% Subject: Astrodynamics
%
%% obt2stvect
%
% Description
% Orbital elements to state vector
%
% Inputs
% obt: planet orbital elements [struct]
% h: angular momentum []
% theta: true anomaly [rad]
% mu: Sun's gravitational standar parameter [m3s-2]
%
% Ouputs
% r: position vector [m]
% r_: radius [m]
% v: velocity vector [m/s]
%
%% CODE

function [r,v,r_] = obt2stvec(mu,theta,h,obt)

e = obt.e;
omega = obt.omega;
i = obt.i;
w = obt.w;

% Rotation matrix
rot_mat = rotz(omega)*rotx(i)*rotz(w);

% compute r
c1 = h^2/ mu;
c2 = 1/(1+e*cos(theta));
r_ = c1*c2;
r = r_*[cos(theta) sin(theta) 0]';
r = rot_mat*r;

% compute v
c1 = mu/h;
v = c1*[-sin(theta) e+cos(theta) 0]';
v = rot_mat*v;

end