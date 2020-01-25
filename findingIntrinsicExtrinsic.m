%M = [Ab]
A = [newMN(1) newMN(4) newMN(7); newMN(2) newMN(5) newMN(8); newMN(3) newMN(6) newMN(9)];
b = [newMN(10); newMN(11); newMN(12)];

a1 = A(1,:);
a2 = A(2,:);
a3 = A(3,:);

epsilon = 1;
rho = 1/(norm(a3)); %Rho must remain positive

%Calculate r3 after knowing rho
r3 = rho*a3;

%Calculate uo (xo) and vo (yo) after knowing r3
newuo = rho*rho*(dot(a1,a3));
newvo = rho*rho*(dot(a2,a3));

%Calculate cosine(theta) and theta among the vectors used
cosineTheta = -(dot(cross(a1,a3),cross(a2,a3))/(norm(cross(a1,a3))*norm(cross(a2,a3))));
newTheta = acos(cosineTheta);

%Calculate alpha after knowing cosine theta
newAlpha = rho*rho*norm(cross(a1,a3))*sin(newTheta);

%Calculate beta after knowing alpha
newBeta = rho*rho*norm(cross(a2,a3))*sin(newTheta);

%Calculate r1 after knowing beta
r1 = (1/norm(cross(a2,a3)))*cross(a2,a3);

%Calculate r2 using r1 and r3
r2 = cross(r3,r1);

%Put together the newly created rotation matrix
newR = [r1; r2; r3];

%Find K using A = [KR]
%K = R^-1A R\A
newK = newR\A;

%Find t using b = Kt
%t = K/b
newT = rho*newK\b;

%Find thetaX, thetaY and thetaZ
newThetaY = asin(newR(7));
newThetaX = acos(newR(9)/cos(newThetaY));
newThetaZ = acos(newR(1)/cos(newThetaY));

%Compute the final Rt and final M
newRt = [newR newT];
finalM = newK * newRt;
finalMN = finalM/finalM(12);

%Test a projection using the finalM.
twoD1Final = finalMN*threeD1;
twoD1FinalN = twoD1Final/twoD1Final(3);
