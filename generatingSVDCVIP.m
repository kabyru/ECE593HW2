threeD1 = [1;2;3;1];
threeD2 = [4;5;6;1];
threeD3 = [7;8;9;1];
threeD4 = [10;11;12;1];
threeD5 = [13;14;15;1];
threeD6 = [16;17;18;1];
threeD7 = [19;20;21;1];
threeD8 = [21;22;23;1];
threeD9 = [24;25;26;1];
threeD10 = [27;28;29;1];
threeD11 = [30;31;32;1];
threeD12 = [32;33;34;1];

twoD1 = MN*threeD1;
twoD2 = MN*threeD2;
twoD3 = MN*threeD3;
twoD4 = MN*threeD4;
twoD5 = MN*threeD5;
twoD6 = MN*threeD6;
twoD7 = MN*threeD7;
twoD8 = MN*threeD8;
twoD9 = MN*threeD9;
twoD10 = MN*threeD10;
twoD11 = MN*threeD11;
twoD12 = MN*threeD12;

%Normalized 2D points (divide by third element)twoD8N
twoD1N = [twoD1(1)/twoD1(3); twoD1(2)/twoD1(3)];
twoD2N = [twoD2(1)/twoD2(3); twoD2(2)/twoD2(3)];
twoD3N = [twoD3(1)/twoD3(3); twoD3(2)/twoD3(3)];
twoD4N = [twoD4(1)/twoD4(3); twoD4(2)/twoD4(3)];
twoD5N = [twoD5(1)/twoD5(3); twoD5(2)/twoD5(3)];
twoD6N = [twoD6(1)/twoD6(3); twoD6(2)/twoD6(3)];
twoD7N = [twoD7(1)/twoD7(3); twoD7(2)/twoD7(3)];
twoD8N = [twoD8(1)/twoD8(3); twoD8(2)/twoD8(3)];
twoD9N = [twoD9(1)/twoD9(3); twoD9(2)/twoD9(3)];
twoD10N = [twoD10(1)/twoD10(3); twoD10(2)/twoD10(3)];
twoD11N = [twoD11(1)/twoD11(3); twoD11(2)/twoD11(3)];
twoD12N = [twoD12(1)/twoD12(3); twoD12(2)/twoD12(3)];

%Now, create the SVD matrix
SVD11 = [transpose(threeD1) 0 0 0 0 (-twoD1N(1)*threeD1(1)) (-twoD1N(1)*threeD1(2)) (-twoD1N(1)*threeD1(3)) -twoD1N(1)];
SVD12 = [0 0 0 0 transpose(threeD1) (-twoD1N(2)*threeD1(1)) (-twoD1N(2)*threeD1(2)) (-twoD1N(2)*threeD1(3)) -twoD1N(2)];

SVD21 = [transpose(threeD2) 0 0 0 0 (-twoD2N(1)*threeD2(1)) (-twoD2N(1)*threeD2(2)) (-twoD2N(1)*threeD2(3)) -twoD2N(1)];
SVD22 = [0 0 0 0 transpose(threeD2) (-twoD2N(2)*threeD2(1)) (-twoD2N(2)*threeD2(2)) (-twoD2N(2)*threeD2(3)) -twoD2N(2)];

SVD31 = [transpose(threeD3) 0 0 0 0 (-twoD3N(1)*threeD3(1)) (-twoD3N(1)*threeD3(2)) (-twoD3N(1)*threeD3(3)) -twoD3N(1)];
SVD32 = [0 0 0 0 transpose(threeD3) (-twoD3N(2)*threeD3(1)) (-twoD3N(2)*threeD3(2)) (-twoD3N(2)*threeD3(3)) -twoD3N(2)];

SVD41 = [transpose(threeD4) 0 0 0 0 (-twoD4N(1)*threeD4(1)) (-twoD4N(1)*threeD4(2)) (-twoD4N(1)*threeD4(3)) -twoD4N(1)];
SVD42 = [0 0 0 0 transpose(threeD4) (-twoD4N(2)*threeD4(1)) (-twoD4N(2)*threeD4(2)) (-twoD4N(2)*threeD4(3)) -twoD4N(2)];

SVD51 = [transpose(threeD5) 0 0 0 0 (-twoD5N(1)*threeD5(1)) (-twoD5N(1)*threeD5(2)) (-twoD5N(1)*threeD5(3)) -twoD5N(1)];
SVD52 = [0 0 0 0 transpose(threeD5) (-twoD5N(2)*threeD5(1)) (-twoD5N(2)*threeD5(2)) (-twoD5N(2)*threeD5(3)) -twoD5N(2)];

SVD61 = [transpose(threeD6) 0 0 0 0 (-twoD6N(1)*threeD6(1)) (-twoD6N(1)*threeD6(2)) (-twoD6N(1)*threeD6(3)) -twoD6N(1)];
SVD62 = [0 0 0 0 transpose(threeD6) (-twoD6N(2)*threeD6(1)) (-twoD6N(2)*threeD6(2)) (-twoD6N(2)*threeD6(3)) -twoD6N(2)];

SVD71 = [transpose(threeD7) 0 0 0 0 (-twoD7N(1)*threeD7(1)) (-twoD7N(1)*threeD7(2)) (-twoD7N(1)*threeD7(3)) -twoD7N(1)];
SVD72 = [0 0 0 0 transpose(threeD7) (-twoD7N(2)*threeD7(1)) (-twoD7N(2)*threeD7(2)) (-twoD7N(2)*threeD7(3)) -twoD7N(2)];

SVD81 = [transpose(threeD8) 0 0 0 0 (-twoD8N(1)*threeD8(1)) (-twoD8N(1)*threeD8(2)) (-twoD8N(1)*threeD8(3)) -twoD8N(1)];
SVD82 = [0 0 0 0 transpose(threeD8) (-twoD8N(2)*threeD8(1)) (-twoD8N(2)*threeD8(2)) (-twoD8N(2)*threeD8(3)) -twoD8N(2)];

SVD91 = [transpose(threeD9) 0 0 0 0 (-twoD9N(1)*threeD9(1)) (-twoD9N(1)*threeD9(2)) (-twoD9N(1)*threeD9(3)) -twoD9N(1)];
SVD92 = [0 0 0 0 transpose(threeD9) (-twoD9N(2)*threeD9(1)) (-twoD9N(2)*threeD9(2)) (-twoD9N(2)*threeD9(3)) -twoD9N(2)];

SVD101 = [transpose(threeD10) 0 0 0 0 (-twoD10N(1)*threeD10(1)) (-twoD10N(1)*threeD10(2)) (-twoD10N(1)*threeD10(3)) -twoD10N(1)];
SVD102 = [0 0 0 0 transpose(threeD10) (-twoD10N(2)*threeD10(1)) (-twoD10N(2)*threeD10(2)) (-twoD10N(2)*threeD10(3)) -twoD10N(2)];

SVD111 = [transpose(threeD11) 0 0 0 0 (-twoD11N(1)*threeD11(1)) (-twoD11N(1)*threeD11(2)) (-twoD11N(1)*threeD11(3)) -twoD11N(1)];
SVD112 = [0 0 0 0 transpose(threeD11) (-twoD11N(2)*threeD11(1)) (-twoD11N(2)*threeD11(2)) (-twoD11N(2)*threeD11(3)) -twoD11N(2)];

SVD121 = [transpose(threeD12) 0 0 0 0 (-twoD12N(1)*threeD12(1)) (-twoD12N(1)*threeD12(2)) (-twoD12N(1)*threeD12(3)) -twoD12N(1)];
SVD122 = [0 0 0 0 transpose(threeD12) (-twoD12N(2)*threeD12(1)) (-twoD12N(2)*threeD12(2)) (-twoD12N(2)*threeD12(3)) -twoD12N(2)];

Q = [SVD11; SVD12; SVD21; SVD22; SVD31; SVD32; SVD41; SVD42; SVD51; SVD52; SVD61; SVD62; SVD71; SVD72; SVD81; SVD82; SVD91; SVD92; SVD101; SVD102; SVD111; SVD112; SVD121; SVD122];
%Q = [SVD11; SVD12; SVD21; SVD22; SVD31; SVD32; SVD41; SVD42; SVD51; SVD52; SVD61; SVD62];

%zeroArray = [0;0;0;0;0;0;0;0;0;0;0;excel0];

genM = svd(Q);
[U,S,V] = svd(Q);

newM = V(:,12);
newM = [newM(1) newM(2) newM(3) newM(4); newM(5) newM(6) newM(7) newM(8); newM(9) newM(10) newM(11) newM(12)];
newMN = newM/newM(12);
twoD1New = newMN*threeD1;
%twoD1New = twoD1New/twoD1New(3);