%% CASSINI GRAND FINALE
% Astrodynamics first assesment
% Authors: Casanovas, Marc
%          Gago, Edgar
%          Ibañez, Carlos
% Date 15/10/2020
% Subject: Astrodynamics
%
%% date2JC
%
% Description
% Standar day to Julian Century
%
% Inputs
% y: year
% m: month
% d: day
% h: hour
% min: minuts
% sec: sconds 
%
% Ouputs
% Cy: Julian Century
% %
%% CODE


function Cy = date2JC(y,m,d,h,min,sec)

UT= num2str(h)+":"+num2str(min)+":"+num2str(sec);
str_time = num2str(y) + "-"+num2str(m)+ "-" + num2str(d)+ " "+ UT;

t = datetime(str_time);

JD = juliandate(t);

Cy = ( JD - 2451545.0 ) / 36525;


end