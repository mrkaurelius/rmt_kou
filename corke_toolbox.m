%% toolbox komularına basit giris 
% rotation matrice
R = rot2(0.2)

%eger aci radyan ise bir takım ozellikler gozlenir 
det(R)

%homojen transformasyon matrisi

t_1 = transl2(1,2) * trot2(30, 'deg');
t_2 = transl2(2, 1);
t_3 = t_1 * t_2;

plotvol([0 5 0 5]);
trplot2(t_1, 'frame', '3', 'color', 'b')
trplot2(t_2, 'frame', '2', 'color', 'r')
trplot2(t_3, 'frame', '3', 'color', 'g')
% bayagı atladıgım yer var onlara bak

%% three angle representations

% rotation matrix 
R = rotz(0.1) + rotz(0.2) + rotz(0.3) 

% or more conveniently
R = eul2r(0.1, 0.2, 0.3)
% !!! burada kaldım
