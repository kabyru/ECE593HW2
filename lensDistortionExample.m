% Parameters
syms k_1 k_2 p_1 p_2 real;
syms r x y;
distortionX = subs(x * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_1 * x * y + p_2 * (r^2 + 2 * x^2), r, sqrt(x^2 + y^2));
distortionY = subs(y * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_2 * x * y + p_1 * (r^2 + 2 * y^2), r, sqrt(x^2 + y^2));
parameters = [k_1 k_2 p_1 p_2];
parameterValues = [0 0 0 0];
plotLensDistortion(distortionX,distortionY,parameters,parameterValues)
% Set Parameters
parameters = [k_1 k_2 p_1 p_2];
parameterValues = [0.15 0 0 0];
plotLensDistortion(distortionX,distortionY,parameters,parameterValues)