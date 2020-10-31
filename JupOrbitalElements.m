function obtelmnt = JupOrbitalElements(Cy)

% All the elements are in degrees minus the eccentricy and the
% semi major axis 

% Semi major axis UA
a = 5.20288700 - 0.00011607 * Cy; 

% Eccentricity [adim]
e = 0.04839266 - 0.00012880 * Cy; 

% Inclination to the ecliptic plane
i =  1.30530 - arc2deg(4.15)*Cy; 

% Right ascension of the ascending nod (from sun)
omega = 100.55615 +  arc2deg(1217.17)*Cy;

% Longitude of perihelion
w_ = 14.75385 +  arc2deg(839.93)*Cy; 

% Mean longitude
L = 34.40438 +  arc2deg(10925078.35)*Cy; 

M = L - w_; %The mean anomaly
w = w_ - omega; %argument of the perihelion

% Struc allocation to easier management
obtelmnt = struct("a",a,"e",e,"i",i,"omega",omega,"w_",w_,"w",w,"L",L...
    ,"M",M);

end

function deg = arc2deg(x)

deg = x/3600;

deg = wrapTo360(deg);

end

