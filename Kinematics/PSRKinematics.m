function [r_IIr3R, r_IIr3L,theta3R, theta3L] = PSRKinematics(thetaB, theta1R, theta1L, theta2L, theta2R)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

% Link Vectors
IBx = 0;
IBy = 0; 

r_IIrB = [IBx;IBy;0];
r_BBr1R = [0;-r12R;0];
r_11r2R = [r12R;0;0];
r_22r3R = [r12R;0;0];

r_BBr1L = [0;-r12L;0];
r_11r2L = [r12L;0;0];
r_22r3L = [r12L;0;0];

% Rotations
T_ITB  = rotz(thetaB);
T_BT1L = rotz(pi/2 + theta1L);
T_1T2L = rotz(theta2L);

T_BT1R = rotz(-pi/2 + theta1R);
T_1T2R = rotz(theta2R);

% End-Effector
r_BBr3R = r_BBr1R + T_BT1R*r_11r2R + T_BT1R*T_1T2R*r_22r3R;
r_BBr3L = r_BBr1L + T_BT1L*r_11r2L + T_BT1L*T_1T2L*r_22r3L;

r_IIr3R = r_IIrB + T_ITB*r_BBr3R;
r_IIr3L = r_IIrB + T_ITB*r_BBr3L;

r_IIr3R = simplify(r_IIr3R)
r_IIr3L = simplify(r_IIr3L)
end

