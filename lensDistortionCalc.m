% Parameters
syms k_1 k_2 p_1 p_2 real;
syms r x y;
distortionX = subs(x * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_1 * x * y + p_2 * (r^2 + 2 * x^2), r, sqrt(x^2 + y^2));
distortionY = subs(y * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_2 * x * y + p_1 * (r^2 + 2 * y^2), r, sqrt(x^2 + y^2));
parameters = [k_1 k_2 p_1 p_2];
parameterValues = [0 0 0 0];
figure;
plotLensDistortion(distortionX,distortionY,parameters,parameterValues)
% Set Parameters
parameters = [k_1 k_2 p_1 p_2];
parameterValues = [0.15 0 0 0];
figure;
plotLensDistortion(distortionX,distortionY,parameters,parameterValues)
% Set Parameters
parameters = [k_1 k_2 p_1 p_2];
parameterValues = [0.30 0 0 0];
figure;
plotLensDistortion(distortionX,distortionY,parameters,parameterValues)

%For the first set of created normalized 2D points
x = twoD1N(1);
y = twoD1N(2);
k_1 = 0.15;
k_2 = 0;
p_1 = 0;
p_2 = 0;
distortionX = subs(x * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_1 * x * y + p_2 * (r^2 + 2 * x^2), r, sqrt(x^2 + y^2));
distortionY = subs(y * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_2 * x * y + p_1 * (r^2 + 2 * y^2), r, sqrt(x^2 + y^2));

distortionX=double(distortionX);
distortionY=double(distortionY);

sprintf("Undistorted X: %f, Distorted X: %f\n",x,distortionX)
sprintf("Undistorted Y: %f, Distorted Y: %f\n",y,distortionY)

%For the second set of created normalized 2D points
x = twoD2N(1);
y = twoD2N(2);
k_1 = 0.15;
k_2 = 0;
p_1 = 0;
p_2 = 0;
distortionX = subs(x * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_1 * x * y + p_2 * (r^2 + 2 * x^2), r, sqrt(x^2 + y^2));
distortionY = subs(y * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_2 * x * y + p_1 * (r^2 + 2 * y^2), r, sqrt(x^2 + y^2));

distortionX=double(distortionX);
distortionY=double(distortionY);

sprintf("Undistorted X: %f, Distorted X: %f\n",x,distortionX)
sprintf("Undistorted Y: %f, Distorted Y: %f\n",y,distortionY)

%For the third set of created normalized 2D points
x = twoD3N(1);
y = twoD3N(2);
k_1 = 0.15;
k_2 = 0;
p_1 = 0;
p_2 = 0;
distortionX = subs(x * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_1 * x * y + p_2 * (r^2 + 2 * x^2), r, sqrt(x^2 + y^2));
distortionY = subs(y * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_2 * x * y + p_1 * (r^2 + 2 * y^2), r, sqrt(x^2 + y^2));

distortionX=double(distortionX);
distortionY=double(distortionY);

sprintf("Undistorted X: %f, Distorted X: %f\n",x,distortionX)
sprintf("Undistorted Y: %f, Distorted Y: %f\n",y,distortionY)

%For the fourth set of created normalized 2D points
x = twoD4N(1);
y = twoD4N(2);
k_1 = 0.15;
k_2 = 0;
p_1 = 0;
p_2 = 0;
distortionX = subs(x * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_1 * x * y + p_2 * (r^2 + 2 * x^2), r, sqrt(x^2 + y^2));
distortionY = subs(y * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_2 * x * y + p_1 * (r^2 + 2 * y^2), r, sqrt(x^2 + y^2));

distortionX=double(distortionX);
distortionY=double(distortionY);

sprintf("Undistorted X: %f, Distorted X: %f\n",x,distortionX)
sprintf("Undistorted Y: %f, Distorted Y: %f\n",y,distortionY)

%For the fifth set of created normalized 2D points
x = twoD5N(1);
y = twoD5N(2);
k_1 = 0.15;
k_2 = 0;
p_1 = 0;
p_2 = 0;
distortionX = subs(x * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_1 * x * y + p_2 * (r^2 + 2 * x^2), r, sqrt(x^2 + y^2));
distortionY = subs(y * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_2 * x * y + p_1 * (r^2 + 2 * y^2), r, sqrt(x^2 + y^2));

distortionX=double(distortionX);
distortionY=double(distortionY);

sprintf("Undistorted X: %f, Distorted X: %f\n",x,distortionX)
sprintf("Undistorted Y: %f, Distorted Y: %f\n",y,distortionY)

%For the sixth set of created normalized 2D points
x = twoD6N(1);
y = twoD6N(2);
k_1 = 0.15;
k_2 = 0;
p_1 = 0;
p_2 = 0;
distortionX = subs(x * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_1 * x * y + p_2 * (r^2 + 2 * x^2), r, sqrt(x^2 + y^2));
distortionY = subs(y * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_2 * x * y + p_1 * (r^2 + 2 * y^2), r, sqrt(x^2 + y^2));

distortionX=double(distortionX);
distortionY=double(distortionY);

sprintf("Undistorted X: %f, Distorted X: %f\n",x,distortionX)
sprintf("Undistorted Y: %f, Distorted Y: %f\n",y,distortionY)

%For the seventh set of created normalized 2D points
x = twoD7N(1);
y = twoD7N(2);
k_1 = 0.15;
k_2 = 0;
p_1 = 0;
p_2 = 0;
distortionX = subs(x * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_1 * x * y + p_2 * (r^2 + 2 * x^2), r, sqrt(x^2 + y^2));
distortionY = subs(y * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_2 * x * y + p_1 * (r^2 + 2 * y^2), r, sqrt(x^2 + y^2));

distortionX=double(distortionX);
distortionY=double(distortionY);

sprintf("Undistorted X: %f, Distorted X: %f\n",x,distortionX)
sprintf("Undistorted Y: %f, Distorted Y: %f\n",y,distortionY)

%For the eighth set of created normalized 2D points
x = twoD8N(1);
y = twoD8N(2);
k_1 = 0.15;
k_2 = 0;
p_1 = 0;
p_2 = 0;
distortionX = subs(x * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_1 * x * y + p_2 * (r^2 + 2 * x^2), r, sqrt(x^2 + y^2));
distortionY = subs(y * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_2 * x * y + p_1 * (r^2 + 2 * y^2), r, sqrt(x^2 + y^2));

distortionX=double(distortionX);
distortionY=double(distortionY);

sprintf("Undistorted X: %f, Distorted X: %f\n",x,distortionX)
sprintf("Undistorted Y: %f, Distorted Y: %f\n",y,distortionY)

%For the ninth set of created normalized 2D points
x = twoD9N(1);
y = twoD9N(2);
k_1 = 0.15;
k_2 = 0;
p_1 = 0;
p_2 = 0;
distortionX = subs(x * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_1 * x * y + p_2 * (r^2 + 2 * x^2), r, sqrt(x^2 + y^2));
distortionY = subs(y * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_2 * x * y + p_1 * (r^2 + 2 * y^2), r, sqrt(x^2 + y^2));

distortionX=double(distortionX);
distortionY=double(distortionY);

sprintf("Undistorted X: %f, Distorted X: %f\n",x,distortionX)
sprintf("Undistorted Y: %f, Distorted Y: %f\n",y,distortionY)

%For the tenth set of created normalized 2D points
x = twoD10N(1);
y = twoD10N(2);
k_1 = 0.15;
k_2 = 0;
p_1 = 0;
p_2 = 0;
distortionX = subs(x * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_1 * x * y + p_2 * (r^2 + 2 * x^2), r, sqrt(x^2 + y^2));
distortionY = subs(y * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_2 * x * y + p_1 * (r^2 + 2 * y^2), r, sqrt(x^2 + y^2));

distortionX=double(distortionX);
distortionY=double(distortionY);

sprintf("Undistorted X: %f, Distorted X: %f\n",x,distortionX)
sprintf("Undistorted Y: %f, Distorted Y: %f\n",y,distortionY)

%For the eleventh set of created normalized 2D points
x = twoD11N(1);
y = twoD11N(2);
k_1 = 0.15;
k_2 = 0;
p_1 = 0;
p_2 = 0;
distortionX = subs(x * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_1 * x * y + p_2 * (r^2 + 2 * x^2), r, sqrt(x^2 + y^2));
distortionY = subs(y * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_2 * x * y + p_1 * (r^2 + 2 * y^2), r, sqrt(x^2 + y^2));

distortionX=double(distortionX);
distortionY=double(distortionY);

sprintf("Undistorted X: %f, Distorted X: %f\n",x,distortionX)
sprintf("Undistorted Y: %f, Distorted Y: %f\n",y,distortionY)

%For the twelth set of created normalized 2D points
x = twoD12N(1);
y = twoD12N(2);
k_1 = 0.15;
k_2 = 0;
p_1 = 0;
p_2 = 0;
distortionX = subs(x * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_1 * x * y + p_2 * (r^2 + 2 * x^2), r, sqrt(x^2 + y^2));
distortionY = subs(y * (1 + k_1 * r^2 + k_2 * r^4) + 2 * p_2 * x * y + p_1 * (r^2 + 2 * y^2), r, sqrt(x^2 + y^2));

distortionX=double(distortionX);
distortionY=double(distortionY);

sprintf("Undistorted X: %f, Distorted X: %f\n",x,distortionX)
sprintf("Undistorted Y: %f, Distorted Y: %f\n",y,distortionY)