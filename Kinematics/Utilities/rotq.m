function [T] = rotq(q)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);

T = [2*q1^2+2*q0^2-1, 2*q1*q2-2*q0*q3, 2*q1*q3+2*q0*q2;
    2*q1*q2+2*q0*q3, 2*q2^2+2*q0^2-1, 2*q2*q3-2*q0*q1;
    2*q1*q3-2*q0*q2, 2*q2*q3+2*q0*q1, 2*q3^2+2*q0^2-1];
end

