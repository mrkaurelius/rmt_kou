z=0:(2*pi)/100:2*pi

%elipsgraf(2,5,10,3);
b=3;
a=10;
x0 = 5;
y0 = 2;
y=b*sin(z) + y0;
x=a*cos(z) + x0;
 
plot(x, y)