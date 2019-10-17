function [xo,yo,vect] = elipsgraf(y0,x0,a,b) %parametreler buraya 
    if nargout == 0
    %printf("output sayisi %d \n",nargout)
    z=0:(2*pi)/100:2*pi;
    %elipsgraf(2,5,10,3);
    %b=3;
    %a=10;
    %x0 = 5;
    %y0 = 2;
    y=b*sin(z) + y0;
    x=a*cos(z) + x0;
    plot(x, y);
    endif
    if nargout == 1
    printf("output sayisi %d \n",nargout)
    z=0:(2*pi)/100:2*pi;
    %elipsgraf(2,5,10,3);
    %b=3;
    %a=10;
    %x0 = 5;
    %y0 = 2;
    y=b*sin(z) + y0;
    x=a*cos(z) + x0;
    xo = [x,y]
  endif  
      if nargout == 2
    printf("output sayisi %d \n",nargout)
    z=0:(2*pi)/100:2*pi;
    %elipsgraf(2,5,10,3);
    %b=3;
    %a=10;
    %x0 = 5;
    %y0 = 2;
    yo=b*sin(z) + y0;
    xo=a*cos(z) + x0;
    endif  
end

% 3, 4, 5, 6, 8, 10, 12, 18, 24
subplot(3,3,1)
th = 0:pi/1.5:2*pi;
xunit = cos(th); 
yunit = sin(th);
h = plot(xunit, yunit);

subplot(3,3,2)
th = 0:pi/2:2*pi;
xunit = cos(th); 
yunit = sin(th);
h = plot(xunit, yunit);

subplot(3,3,3)
th = 0:pi/2.5:2*pi;
xunit = cos(th); 
yunit = sin(th);
h = plot(xunit, yunit);

subplot(3,3,4)
th = 0:pi/3:2*pi;
xunit = cos(th); 
yunit = sin(th);
h = plot(xunit, yunit);

subplot(3,3,5)
th = 0:pi/4:2*pi;
xunit = cos(th); 
yunit = sin(th);
h = plot(xunit, yunit);

subplot(3,3,6)
th = 0:pi/5:2*pi;
xunit = cos(th); 
yunit = sin(th);
h = plot(xunit, yunit);

subplot(3,3,7)
th = 0:pi/6:2*pi;
xunit = cos(th); 
yunit = sin(th);
h = plot(xunit, yunit);

subplot(3,3,8)
th = 0:pi/9:2*pi;
xunit = cos(th); 
yunit = sin(th);
h = plot(xunit, yunit);

subplot(3,3,9)
th = 0:pi/12:2*pi;
xunit = cos(th); 
yunit = sin(th);
h = plot(xunit, yunit);