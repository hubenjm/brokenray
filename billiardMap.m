function [theta2, s] = billiardMap(theta1, eta)

%note that the direction of the broken ray relative to the tangent plane at
%each of its reflection points never changes. So eta never has to be
%recomputed. However, the absolute angle given by alpha DOES change, as
%that depends on the current point.

s = sqrt(2)*sqrt(1 - cos(2*eta1)); %length of broken ray segment
alpha1 = etaToAlpha(eta, theta1);%converting from angle relative to tangent plane at theta1 to absolute angle

M1 = [cos(theta1), sin(theta1)]; %cartesian coords of starting points on circle
M2 = M1 + repmat(s, 1, 2).*[cos(alpha1), sin(alpha1)]; %mesh of points on boundary after one billiard map application

theta2 = mod(atan2(M2(:,2), M2(:,1)), 2*pi);
end