%% ses orneği
f0 = 440;
fs = 8000;
Ts = 1/fs;
tmax = 3;
t = 0 : Ts : tmax;
x = cos(2*pi*f0*t);
sound(x,fs);
pause(tmax+1);
y = x .^ 2;
sound(y, fs);

% plotu nasil yapılabilir