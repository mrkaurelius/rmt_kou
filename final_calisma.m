%% robotic toolbox api örnekleri 
%% rot2(), SO(2) 2x2 rotation matrix
rm_deg = rot2(90,'deg')
rm_rad = rot2(pi/2)
% SO2 Rerpresentation of 2D rotation
% SO2 orneklerini yap
%% trot2() rotation matrix, homogen. transformation (3x3) repr. a rotation
T1 = trot2(pi/2)
T2 = trot2(pi/4)
T3 = trot2(pi/6)
isequal(T1 * T2 * T3,T3 * T2 * T1) % 1 h. t. matrislerin çarpımı 
% 2 den fazla donusum olunca sıra fark eder aynı sonuc olusmaz commutative
% degil !!! 
%% transl2(X,Y) homogen. transfrom (3x3) repr. pure translation 
% sadece oteleme yaptıran homojen donusum matrisi verir
T_transl  = transl2(1,2)
tran_vec = [1 2]';
%% trplot2()
T1 = transl2(1, 2) * trot2(30, 'deg')
T2 = transl2(2, 1)
T3 = T1*T2
T4 = T2*T1
T5 = trot2(10,'deg') * transl2(4,1)
plotvol([0 5 0 5]);
trplot2(T1, 'frame', '1', 'color', 'b');
trplot2(T2, 'frame', '2', 'color', 'r');
trplot2(T3, 'frame', '3', 'color', 'g');
trplot2(T4, 'frame', '4', 'color', 'c');
trplot2(T5, 'frame', '5', 'color', 'y');

P = [3 ; 2 ]; % relative to world frame 
P_T1 = h2e(inv(T1) * e2h(P)) % kitap sf. 29
% noktayı öklid tanımladık homojene cevirdik
% T1 homojen donusum matrisi ile carptık elde edilen yeni homojen d. mat.
% yeniden öklide cevirdil
% plot_point(P_T1, 'label', 'P_T1', 'solid', 'ko');
% p1 e gore noktayı world framede plot etmek aptalca 
% noktanın degerinden cıkart
plot_point(P, 'label', 'P', 'solid', 'ko');
%% h2e() Homogeneous to Euclidean, e2h() Euclidean to Homogeneous
% noktalari çizdir 
euc_p = [3 2]' % euclid nokta 
e2h(euc_p) % nokta icin homojen donusum matrisi ?
% islemlerin sirasi onemli matrislerin boyutlarına dikkat et
rot_euc_1 = trot2(15,'deg') * e2h(euc_p)
rot_euc_2 = trot2(30,'deg') * e2h(euc_p)
rot_euc_3 = transl2(1,2) * rot_euc_2 

plotvol([0 5 0 5]);
plot_point(euc_p, 'label', 'P0', 'solid', 'ko');
plot_point(h2e(rot_euc_1), 'label', 'P1', 'solid', 'ko');
plot_point(h2e(rot_euc_2), 'label', 'P2', 'solid', 'ko');
plot_point(h2e(rot_euc_3), 'label', 'P3', 'solid', 'ko');
h2e(e2h(euc_p))
homogen_m = trot2(pi/12) * transl2(1,2) % homojen donusm matrisi
h2e(homogen_m) % euclidde orientation olmadıgı icin mi inf oluyor ?
%% t2r(T) Homojen donusum matrisinden dönme metrisini verir
T = trot2(pi/2)
R = t2r(T)
%% SO2 representation of 2D rotation
T = SE2(1,2,30,'deg') % konum ve orientation
trplot2(T, 'frame', 'T', 'color', 'b');
%% donme merkezleri 
plotvol([-5 4 -1 5]);
T0 = eye(3,3);
trplot2(T0, 'frame', '0');
X = transl2(2, 3);
trplot2(X, 'frame', 'X');
% create rotation of 2 radian 
R = trot2(2);
% and plot the effect of the two possible orders of composition
trplot2(R*X, 'framelabel', 'RX', 'color', 'r');
% RX has been rotated about origin)
trplot2(X*R, 'framelabel', 'XR', 'color', 'r');
% XR rotated about the origin of X
C = [1 2]';
plot_point(C, 'label', ' C', 'solid', 'ko');
RC = transl2(C) * R * transl2(-C)
trplot2(RC*X, 'framelabel', 'XC', 'color', 'r');
% XC frame has been rotated about point C 
% hard to understand transfor kitap sf 30
%% SO3 Representation of 3D rotation and position
T_3d = SE3(1,2,2) % sadece konum orientation yok
% trplot(T_3d)
%tranimate(T_3d.Rx(2)*T_3d.transl(1,1) *T_3d.Ry(1)*T_3d.Rx(2))
%% rotx(), roty(), rotz() eksenler etrafında 3 boyutlu dondurme
% hoca buraları ne kadar isledi
T = transl(1,1,1)
T_rotx = T * trotx(30, 'deg')
plotvol([0 5 0 5]);
trplot(T, 'frame', 'T1', 'color', 'b')
trplot(T_rotx, 'frame', 'Trx', 'color', 'b')
%% tranimate()
R = rotx(pi/2) * roty(pi/2)
tranimate(R,'3d')

%% rpy2r() roll-pitch-yaw  to SO3 rotation matrix NOT homog. trans.
R = rpy2r(30,30,30,'deg')

%% thre-angle representations 
% EULER 
% XYX, XZX, YXY, YZY, ZXZ, or ZYZ euler sequence 
% ZYZ donusumu toolboxta ve bircok alanda kullanılır
R = rotz(pi/2) * roty(pi/2) * rotz(pi/2)
% or more conveniently
R = eul2r(0.1, 0.2, 0.3) % euler angles to rotation matrix
tranimate(R,'3d')
% finding the euler angles that correspond to given rotation matrix
gamma = tr2eul(R)
% RPY
R = rpy2r(0.1, 0.2, 0.3)
tranimate(R,'3d')
gamma = tr2rpy(R)
%% Singularities and Gimball Lock 
%  hikeyi anla 
%% unit quaternions 
q = UnitQuaternion( rpy2tr(0.1, 0.2, 0.3) ) %reel ve i, j, k sanal kısım
q * inv(q) % identity (birim) quaternion 
q/q % null rotation 
q.plot() % 3d repr.
%% final hazırlık sorusu (emin degilim)
% noktalar nasıl plot edilebilir ?
B = trotx(60,'deg') * troty(60,'deg') * trotz(15,'deg')
A_p = [7.0 0 3.0]' % noktayi b ye gore tanımla 
% b koordinat sistemine gore P noktası
B_p = inv(B) * e2h(A_p)
plotvol([-1 3 -1 3])
trplot(A, 'frame', 'A', 'color', 'b')
trplot(B, 'frame', 'B', 'color', 'r')
% tranimate(A)
%% coordinate frames
% koordinatların ozellikleri ? hoca derste ne anlattı neleri sorar

%% homojen donusum matrisi implement et 

%% MATLAB generic ornekler
% elementvise islemler 
A = 2 * ones(5)
B = reshape(1:25, [5 5])'
C = B.^A
% diag 
D = diag(C)
% find 
X = magic(5)
[R,C,V] = find(X)
%% matrisler, lineer cebir 


%% terminoloji 
% orthonormal rotation matrix: ? 
