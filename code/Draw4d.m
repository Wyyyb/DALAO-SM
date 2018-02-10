rpol=0.05;
nthe=51;
npsi=51;
the=linspace(0,pi,nthe);
psi=linspace(0,2*pi,npsi);
% Matriculated;
[psi,the]=meshgrid(psi,the);
rpol=rpol*ones(size(the));
% Convert spherical coordinate to Cartesian Coordinate;
T=rpol.*cos(the);                     % z in transformational relation;
R=rpol.*sin(the).*cos(psi);           % x in transformational relation;
L=rpol.*sin(the).*sin(psi);           % y in transformational relation;
tic 
fval=(0.58-3.49*T-5.31*R-2.24*L)/8.96;
toc
%% matrix ( x y z fval ) used to figure fval is color;
%% figure
%figure('Renderer','zbuffer','Color',[1 1 1]);
subplot(2, 2, 1);
surf(T,R,L,fval);
title('D');
%shading interp;light;lighting gouraud;
colormap(hsv(128));
colorbar
axis equal;
xlabel('R');ylabel('L');zlabel('T');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Convert spherical coordinate to Cartesian Coordinate;
R=rpol.*cos(the);                     % z in transformational relation;
L=rpol.*sin(the).*cos(psi);           % x in transformational relation;
D=rpol.*sin(the).*sin(psi);           % y in transformational relation;
tic 
fval=(0.58-8.96*D-5.31*R-2.24*L)/3.49;
toc
%% matrix ( x y z fval ) used to figure fval is color;
%% figure
subplot(2, 2, 2);
surf(R,L,D,fval);
title('T');
%shading interp;light;lighting gouraud;
colormap(hsv(128));
colorbar
axis equal;
xlabel('L');ylabel('D');zlabel('R');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Convert spherical coordinate to Cartesian Coordinate;
T=rpol.*cos(the);                     % z in transformational relation;
L=rpol.*sin(the).*cos(psi);           % x in transformational relation;
D=rpol.*sin(the).*sin(psi);           % y in transformational relation;
tic 
fval=(0.58-8.96*D-3.49*T-2.24*L)/5.31;
toc
%% matrix ( x y z fval ) used to figure fval is color;
%% figure
subplot(2, 2, 3);
surf(T,L,D,fval);
title('R');
% shading interp;
% light;
% material dull;
% lighting gouraud;
colormap(hsv(128));
colorbar
axis equal;
xlabel('L');ylabel('D');zlabel('T');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Convert spherical coordinate to Cartesian Coordinate;
T=rpol.*cos(the);                     % z in transformational relation;
R=rpol.*sin(the).*cos(psi);           % x in transformational relation;
D=rpol.*sin(the).*sin(psi);           % y in transformational relation;
tic 
fval=(0.58-8.96*D-3.49*T-5.31*R)/2.24;
toc
%% matrix ( x y z fval ) used to figure fval is color;
%% figure
subplot(2, 2, 4);
surf(T,R,D,fval);
title('L');
%shading interp;light;lighting gouraud;
colormap(hsv(128));
colorbar
axis equal;
xlabel('R');ylabel('D');zlabel('T');