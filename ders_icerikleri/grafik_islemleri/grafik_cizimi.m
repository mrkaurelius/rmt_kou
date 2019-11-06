% matlab grafik komutlar�

x=-20:20;
y=x.^2+1;
plot(x,y)

x=-5*360:.001:5*360;
y=sin(x*(pi/180));
plot(x,y)


x=-8*pi:pi/360:8*pi
y=cos(x)
plot(x,y)
xlabel('-8pi ile 8pi aras�');
ylabel('COS');
title('Cosinus Grafi�i');


x =0:0.1:10;
y = x.^2;
plot(x,y);
title('y= x^2 Grafi�i');
grid;
text(4,50,'y=x^2')
gtext('Y=X^2 e�risi');



x = 0: pi/ 360 : 2*pi; % 0?dan 360?a a�� dizisi olu�turduk.
% 0 ile 2pi aras�n� 1000 e�it par�aya b�l�n.
x =linspace(0,2*pi,1000)
y1 = sin(x);
y2 = cos(x);
plot(x,y1,x,y2);
grid;
xlabel('a�� (rad)')
title('sin(x) ve cos(x) Grafi�i');
legend('sin(x)','cos(x)');


plot(x,y1,'r-->');
hold on;
plot(x,y2,'g');

x = linspace(-pi,pi,20);
y = sin(x);
plot(x,y,'gd-.','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','b',...
                'MarkerSize',8)
            
            
x=[0:5:360];
c=cos(x*pi/180); %Matlabda trigonometrik i�melemler radian cinsinden yap�l�r
s=sin(x*pi/180); %Matlabda trigonometrik i�melemler radian cinsinden yap�l�r
subplot(1,2,1), plot(x,c);
xlabel('x');
ylabel('cos(x)');
title('0 - 360 derece aras� kosinus');
subplot(1,2,2), plot(x,s);
xlabel('x');
ylabel('sin(x)');
title('0 - 360 derece aras� sinus');
            
derece=[0:1:360];
c=cos(derece*pi/180); %Trigonometrik i�lemler radyan cinsinden yap�l�r
s=sin(derece*pi/180); % Trigonometrik i�lemler radyan cinsinden yap�l�r
derece2=-5*pi:.1:5*pi;
snc=sinc(derece2); 
x=[-3:1:5];
y=sqrt((x.^2+7)/3); 
subplot(3,3,1), plot(derece,c);
xlabel('derece');
ylabel('cos');
title('1. subplot 0 - 360 derece aras� kosinus');
subplot(3,3,3), plot(derece,s);
xlabel('derece');
ylabel('sin');
title('2. subplot 0 - 360 derece aras� sinus');
subplot(3,3,4), plot(derece2,snc);
xlabel('derece');
ylabel('sinc');
title('3. subplot -5 pi - 5 piderece aras� sinc');
subplot(3,3,8), plot(x,y);
xlabel('x');
ylabel('y');
title('4. subplot sqrt((x.^2+7)/3)');
