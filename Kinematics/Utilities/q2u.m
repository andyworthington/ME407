function [u, theta] = q2u(q)
%UNTITLED2 Summary of this function gut_args oes here
%   Detailed explanation goes here
theta = 2*acos(q(1));
u(1) = q(2) / sqrt(1-q(1)^2);
u(2) = q(3) / sqrt(1-q(1)^2);
u(3) = q(4) / sqrt(1-q(1)^2);
end

