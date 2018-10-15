function [q] = u2q(u, theta)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

q = [cos(theta/2); u(1)*sin(theta/2);
    u(2)*sin(theta/2);u(3)*sin(theta/2)];

end

