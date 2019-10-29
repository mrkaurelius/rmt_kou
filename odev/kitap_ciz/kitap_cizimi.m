ht = 1

% tum x y  eksenlerini tek bir vektor yap
% en buyugunu bulup limit sec
n1 = [0,0,0];
n2 = [0,2,0];
n3 = [3,2,0];
n4 = [3,0,0];

% diger yuzeyi hesapla
n5 = n1; n5(3) = n5(3) + ht;
n6 = n2; n6(3) = n6(3) + ht;
n7 = n3; n7(3) = n7(3) + ht;
n8 = n4; n8(3) = n8(3) + ht;

lim = 3
xlim([0 lim]);
ylim([0 lim]);
zlim([0 lim]);

y1 = patch([n1(1),n2(1),n3(1),n4(1)],[n1(2),n2(2),n3(2),n4(2)],
[n1(3),n2(3),n3(3),n4(3)],'b');

y2 = patch([n5(1),n6(1),n7(1),n7(1)],[n5(2),n6(2),n7(2),n8(2)],
[n5(3),n6(3),n7(3),n8(3)],'b');

% 1 2 6 5
y3 = patch([n1(1),n2(1),n6(1),n5(1)],[n1(2),n2(2),n6(2),n5(2)],
[n1(3),n2(3),n6(3),n5(3)],'b');

% 1 4 8 5
y4 = patch([n1(1),n4(1),n8(1),n5(1)],[n1(2),n4(2),n8(2),n5(2)],
[n1(3),n4(3),n8(3),n5(3)],'b');

% 4 3 7 8  
y5 = patch([n4(1),n3(1),n7(1),n8(1)],[n4(2),n3(2),n7(2),n8(2)],
[n4(3),n3(3),n7(3),n8(3)],'b');

% 2 3 7 6
y6 = patch([n2(1),n3(1),n7(1),n6(1)],[n2(2),n3(2),n7(2),n6(2)],
[n2(3),n3(3),n7(3),n6(3)],'b');

%yuzey1 = patch([0,3,3,0],[0,0,2,2],[0,0,0,0],'blue') % yuzey 1
%yuzey2 = patch([0,3,3,0],[0,0,2,2],[2,2,2,2],'blue') % yuzey 2 

% noktalarain sirasını gozet ?

%patch([0,0,0,0],[0,0,2,2],[0,2,2,0],'green')