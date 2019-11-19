% 2.10.19 rmt 3. hafta
%% tekrar
zeros(5,1) % 5 satır 1 sutun 
5^3*2-1 % operator onceligi
b = .157e1 % bilimsel gosterim
not(0) % mantıksal fonksyon
a = (1 + eps) % eps = 2 sayı arasındaki en az fark

%% char dizisi
isim1 = 'mehmet'
isim2 = ['ali','veli']
isim3 = "ali veli", "ahmet mehmet" % bekledigin gibi calismaz pythondakine benzer 
isim4 = ["ali mehmet";"ahmet hasan"; "asdfasdf"]
arr1 = ["asdf" , "qwer"; 1234 , 5678 ] % tum degerleri direk string yapar 

%% colon operatörü ile vektör oluşturma
cift_sayilar = 0:2:10 % comprehesion
cift_sayilar_tersten = 10:-2:0

x = 8;
format rat
m1 = x./(1:2:x+1); % vektördeki her elemanı teker teker  8'e böl
%% linspace
linspace(0,10); % linspace 2 parametre alırsa parca sayisini default 100 olarak atar
l0 = linspace(0,5,3); % 0 dan 5 e 3 esit parcaya bol
l1 = linspace(10,0,5); % 10 dan 0 a kadar 5 esit parcaya bol

%% conv
u = [1 0 1]
v = [2 7]
w = conv(u,v) % polinom çarpımı 

%% matrisin koselerdeki ve cevresindeki elemanlarını bulma  ? 
A = [1 2 3;4 5 6;7 8 9];
alt_matris = A(:,end); % son sutun
A1 = [A;1 2 3]; % matrisin yapısını bozacak ise calismaz
v = [1 2 3] % vektorun her elemanın teker teker ustunu al 
v = v.^2

%% matrisin tersi asal ekseni rankı ve determinant
m1 = rand(3,4)
x = pinv(m1) * m1 % pseudo inverse 
x = m1 * pinv(m1) % çarpımın değişme özelliği yok

% eye, identity matrix, birim matris 
diag(ones(1,3))
% daig() -> kosegeni d vektorun elemanlarından olsuan diagonal bir matris uretir
A = [1 2 3;4 5 6;7 8 9; 10 11 12]
diag(A) % asal eksen elemanlarını sutun matrix olarak verir

m = [1 2;3 4]
m1 = [1 2;3 4;2 4]
m2 = [m;1 8]
m3 = magic(2)
det(m3)

% bir matrisin rankı ne icin kullanılır matrisin rankı tam olarak nedir 
% the rank of a matrix is can be defined as the maximum number of linearly
% independent row vectors in the matrix 
rank(m)
rank(m1)
rank(m2)

%% !!! kacirdigim fonksyanalara bak

%% logic
and_deneme = 5&1 % 1
and_deneme = 0&1 % 0
and_deneme = 0&5 % 0
and_deneme = 1&5 % 1

c1 = {int8([2 3]) "merhaba yalan dunya"} % array

%% ödev
% myfunc(1,1,1) % bu fonskyonu tanımla
% conv fonksyonunu implemt et 
