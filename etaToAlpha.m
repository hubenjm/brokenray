function alpha = etaToAlpha(eta, theta)

%eta is a vector of angles relative to the tangent plane at the given
%angles theta on the circle
%alpha is a vector of the angles relative to the x-axis

alpha = eta - (3*pi/2) + theta;

end