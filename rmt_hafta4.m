% !!! conv fonksyonunun implementasyonu
% KENDIN IMPLEMENT ET 
% PLOT 

%sin fonk radyan bekler 
%sind derece bekler 
x = -180:180
y = sind(x)

xlabel("x")
ylabel("y")
plot(x, y)
grid on

%%
x = 0: pi/ 360 : 2*pi; % 0’dan 360’a açı dizisi oluşturduk.
y1 = sin(x);
y2 = cos(x);
plot(x,y1,x,y2);
legend('sin(x)','cos(x)')
grid
xlabel('açı (rad)')
title('sin(x) ve cos(x) Grafiği');


x = linspace(-pi,pi,20);
y = sin(x);
plot(x,y,'--ro','LineWidth',2,...
'MarkerEdgeColor','k',...
'MarkerFaceColor','b',...
'MarkerSize',8)
figure(2)


x=[0:5:360];
c=cos(x*pi/180); %Matlab da trigonometrik işlemler radyan cinsinden yapılır
s=sin(x*pi/180); %Matlab da trigonometrik işlemler radyan cinsinden yapılır
plot(x,c,'r-x',x,s,'b-o');
xlabel('x');
ylabel('cos(x) ve sin(x)');
title('0 - 360 derece arası kosinus ve sinus');
legend('cos(x)','sin(x)',-1);

a1 = 10:20
a2 = 20:30
% SUBPLOT


%3D
y = -10:0.5:10;
x = -10:0.5:10;
[X, Y] = meshgrid(x, y);
Z = sin(sqrt(X.^2+Y.^2)) ./ sqrt(X.^2+Y.^2);
surfc(X, Y, Z);
view(-38, 18);
title('3D Matlab Graph');
xlabel('x');
ylabel('y');
zlabel('z');
