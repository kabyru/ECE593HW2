clear all

%Creating R
thetaX = 0.09;
thetaY = 0.8;
thetaZ = -0.03;

r11 = cos(thetaY)*cos(thetaZ);
r12 = cos(thetaZ)*sin(thetaX)*sin(thetaY)-cos(thetaX)*sin(thetaZ);
r13 = sin(thetaX)*sin(thetaZ) + cos(thetaX)*cos(thetaZ)*sin(thetaY);
r21 = cos(thetaY)*sin(thetaZ);
r22 = sin(thetaX)*sin(thetaY)*sin(thetaZ) + cos(thetaX)*cos(thetaZ);
r23 = cos(thetaX)*sin(thetaY)*sin(thetaZ) - cos(thetaZ)*sin(thetaX);
r31 = -sin(thetaY);
r32 = cos(thetaY)*sin(thetaX);
r33 = cos(thetaX)*cos(thetaY);

R = [r11 r12 r13; r21 r22 r23; r31 r32 r33];

%Creating t
tx = -27;
ty = -28;
tz = 701;
t = [tx; ty; tz];

%Creating K
alpha = 556;
beta = 549;
uo = 172;
vo = 121;
theta = pi/2;

K = [alpha -alpha*cot(theta) uo; 0 beta/sin(theta) vo; 0 0 1];

%Generating M = K[Rt]
Rt = [K t];
M = K*Rt;
MN = M/M(12);

%Writing Results to file...
fid = fopen('groundtruthResults.txt','wt');
fprintf(fid,"Input groundtruth parameters:\n");
fprintf(fid,"alpha:%f \t beta:%f \t uo:%f \t vo:%f \t theta:%f\n",alpha,beta,uo,vo,theta);
fprintf(fid,"tx:%f \t ty:%f \t tz:%f\n",tx,ty,tz);
fprintf(fid,"thetaX:%f \t thetaY:%f \t thetaZ:%f\n",thetaX,thetaY,thetaZ);
fprintf(fid,"\nThe resulting K matrix from groundtruth values:\n");
fprintf(fid, '%f %f %f\n', K);
fprintf(fid,"\nThe resulting R matrix from groundtruth values:\n");
fprintf(fid, '%f %f %f\n', R);
fprintf(fid,"\nThe resulting t matrix from groundtruth values:\n");
fprintf(fid, '%f\n', t);
fprintf(fid,"\nThe resulting Rt matrix from groundtruth values:\n");
fprintf(fid, '%f %f %f %f\n', Rt);
fprintf(fid,"\nThe resulting K[Rt] = Mg matrix from groundtruth values:\n");
fprintf(fid, '%f %f %f %f\n', M);
fprintf(fid,"\n\nEND OF CALCULATIONS");
fclose(fid);