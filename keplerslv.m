%% CASSINI GRAND FINALE
% Astrodynamics first assesment
% Authors: Casanovas, Marc
%          Gago, Edgar
%          Ibañez, Carlos
% Date 15/10/2020
% Subject: Astrodynamics
%
%% keplerslv
%
% Description
% Kepler solver using the  N-R method
%
% Inputs
% obt: planet orbital elements [struct]
%
% Ouputs
% E: eccentric annomaly [rad]
%
%% CODE

function E = keplerslv(obt)

%Inits
M = deg2rad(obt.M);
e = obt.e;

delta = 10e-7; % Error
t = 1;       % While initialization
i = 1;       % Variable to count the numer of iterations
E = M;       % Initialization
max = 100;   % Maximum iterations


while (abs(t) > delta)
    
    F = E - e*sin(E) - M; % function F(M) = E - e*sin(E) - M = 0
    dF = 1.0 - e*cos(E); % derivative of F(M)
    
    if(abs(dF) < delta)
        break;
    else
        
        t = F/dF;
        E = E - t;
        i = i+1;
        
        if(i>max)
            fprintf('\n no convergence after 100 iterations');
            break
        end
        
    end
    
end
end