function [T] = rot(u, theta)
% This function generates a DCM corresponding to rotation
% theta radians about a vector u.

ux = u(1);
uy = u(2);
uz = u(3);

T = [ux^2*(1-cos(theta))+cos(theta), ux*uy*(1-cos(theta))-uz*sin(theta), ux*uz*(1-cos(theta))+uy*sin(theta);
    ux*uy*(1-cos(theta))+uz*sin(theta), uy^2*(1-cos(theta))+cos(theta), uz*uy*(1-cos(theta))-ux*sin(theta);
    ux*uz*(1-cos(theta))-uy*sin(theta), uz*uy*(1-cos(theta))+ux*sin(theta), uz^2*(1-cos(theta))+cos(theta)];

end

