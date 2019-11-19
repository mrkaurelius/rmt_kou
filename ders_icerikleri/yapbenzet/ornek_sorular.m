% ornek sorular
%% 65 ile 90 arasında rastgele bir sayı üretin.

rd = randi([65 90]);

%% 65 ile 90 arasında rastgele 1x10.000 boyutlu tam sayıları round, ceil, floor, fix kullanarak üretiniz. 
% max ve min ile en büyük ve en küçük sayıları listeleyip aralığın doğru olduğunu gösteriniz.

rd_m = 1:10000;
length(rd_m);
% !!! soruda sorulan ne tam olarak anlamadım 
%c = round(10+rand(2,3)*40) 
for i = 1:length(rd_m)
    rd_m(i) = randi([65 90]);
end
max(rd_m);
min(rd_m);
%% 4'den başlayıp 150'ye kadar tüm çift sayıları bir matriste saklayın.

cs = 4:2:149;

%% 41 ile 85 arasındaki tek sayıları tutan bir vektör tanımlayınız. 

ts = 41:2:84;

%% x = [3 7 12 16] vektörünü tanımlayın.

x = [3 7 12 16];

%% x vektörünün her bir elemana 12 ekleyin.

x = x + 12;

%% x vektörünün tek indisli elemanlarına 5 ekleyin. 

x(1:2:end) = x(1:2:end) + 5;

%% x vektörünün her bir elemanın karekökünü hesaplayınız.

kk = x.^0.5;

%% x vektörünün her bir elemanın küpünü hesaplayın. 

kp = x.^3;

%% Aşağıdaki vektörleri tanımlayınız.
%   a. 2, 4, 6, 8, ...

2:2:100;

%   b. 10, 8, 6, 4, 2, 0, -2, -4

10:-2:-4;

%   c. 1, 1/2, 1/3, 1/4, 1/5, ...
% !!! daha iyi cozum var 
c = ones(1,100);

for i=1:100 
  c(i) = c(i) / i;
end

%   d. 0/1, 1/2, 2/3, 3/4, 4/5, ... 

d1 = 0:100;
d2 = 1:100;
d = zeros(1,100);
for i=1:100
  d(i) = d1(i) / d2(i);
end

%% x = [4 5 3 8]'  y = [6 7 10 5]' matrislerini tanımlayınız.

x = [4 5 3 8]';
y = [6 7 10 5]';

%% x matrisinin elemanlarının toplamını y matrisinin her bir elemanına ekleyiniz.

y = y + sum(x);

%% x matrisinin her bir elemanının y matrisinin ilgili elemanı kadar
% kuvvetini alınız. Örnek= x in üçüncü elemanının y matrisinin üçüncü
% elemanı kadar kuvveti.

y3 = x.^y;

%% Y matrisinin her bir elemanını x in ilgili elemanına bölünüz.

y2 = y./x;

%% X matrisi ile Y matrisinin her bir elemanını birbiri ile çarpınız.

y4 = x.*y;

%% 250 ile 400 arasındaki sayıları 30 eşit parçaya bölerek A matrisinde saklayın

A = linspace(250,400,30);

%% 250 ile 400 arasındaki sayıları logaritmik artışla 30 parçaya bölerek A matrisinde saklayın

A = logspace(25,40,30); % tam olarak soruda gorundugu gibi degil

%% Daha önce tanımlı A matrisinin 5. satırındaki değerleri 2 katı ile değiştirin

A = magic(5);
A(5,:) = (A(5,:)*2);

%% magic(10)  matrisinin 3.. satırdaki tüm elemanları listeleyiniz.

A = magic(10);
A(3,:);

%% magic(10) matrisinin 5.. sütundaki tüm elemanları listeleyiniz.

A(:,5);

%% magic(10) matrisinin 1 ile 5.. sütundaki tüm elemanları listeleyiniz.

A(:,[1 5]);

%% magic(10)  matrisinin 1,3,5,7,9. satırdaki tüm elemanları listeleyiniz.

A(1:2:9,:);

%% magic(10)  matrisinin 1, 5,6,7.. satırdaki tüm elemanları listeleyiniz.

A([1 5 6 7],:)


