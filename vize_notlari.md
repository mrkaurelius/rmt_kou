# RMT vize notları

## MATLAB

### Matris oluşturma ve kombine etme

```MATLAB
rand() % (0,1) 
rand(n) % nxn rastgele matris dondurur (0,1)
rand(sz1,...,szN) % szN buyuklugunde matrix arrayi dondurur
rands(4,3)    % -1 ile 1 arasında rastgele elemanlı 4x3 lük matris

randi(imax) % 1,imax arasından rastgele sayi dondurur
randi(imax,n) % 1,imax arasında nxn matris dondurur  
randi(imax,sz1,...,szN) % 1,imax arasında szN boyutta matris(ler) dondurur  
randi([imin,imax],sz) % imin,imax arasında elemanları olan sz boyutunda matris(ler) dondurur  
```

```MATLAB
zeros(n) % nxn sıfır matris dondurur
zeros(sz1,sz2,szN) szN tane elemanı olan sz1 x sz2 matris arrayı dondurur
ones() % benzer...
```

```MATLAB
true(n) % nxn 1 lerden olusan matris dondurur
true([r c]) % rxc boyutunda 1 lerden olusan matris dondurur 
false() % benzer...
```

```MATLAB
magic(n) % nxn magic square dondurur (satır ve sutunların sayisi esit)
```

```MATLAB
diag(v) % asal ekseni v vektorunden olsan matris dondurur  
diag(M) % matrisin asal eksenini dondurur
```

```MATLAB
eye(n) % nxn birim matris (identity matrix) dondurur
eye(n,m) % nxm birim matris dondurur
```
```MATLAB
repmat(A,n)	% matrisi n kopyasını iceren matrisi olusturur
repmat(A,r1,r2,...,rn) % r1, r2 kadar satır veya sutun kopyalanır
```
```MATLAB
reshape(A,sz) % matrisin eleman sayısını koruyacak sekilde seklini degistirir
```

### Aralık Oluşturma

```MATLAB
l0 = linspace(0,5,3) % başlangıç 0,bitiş 5, eleman sayısı 3
l1 = linspace(0,5,3) % 0 ile 5 arasını 100 parçaya boler
y = logspace(a,b) % a,b arasını logaritmik olarak ayırılmıs 50 parçaya böler
```

### İndeksleme

```MATLAB
: % colon, Vector creation, array subscripting, and for-loop iteration
end	 % Terminate block of code or indicate last array index
```

### Matlab API örnekleri

#### Vektörün fonksyon ile kullanma 

```MATLAB
vektor = linspace(1,2,5)
sin(vektor); ans = 1327/1577 1916/2019 1991/1996 553/562 401/441
```

#### Diziler char array ve string


```MATLAB
chr = 'bir karakter dizisi'; % bir diziyi okuma(boşluklarda okunabiliyor)
oku3 = chr(1:4)  % bir 
```


```MATLAB
chr_arr = 'plus ultra' % 
str = "istabul"
ch = {'as',"abc"} % biri string biri char array
```

#### Alt matris ve vektörlere ulaşma

```MATLAB
alt_matris4 = A(3,2:3)
% A matrisinin 3. satırı ile 2. ve 3. sütunları kesişimi
alt_matris3 = A(1:3,:)
% A matrisinin 1. ve 3. satırları ile
% bütün sütunların kesişimi,yani A matrisinin 
alt_matris6 = A(:,end-1)
% Bütün satırlar ile son sütundan önceki sütun kesişimi
alt_matris8 = A(2:1,1)
% satır veya sütun sayısı büyükten küçüğe gider ise boş vetör oluşturur
alt_matris([1,2,4],:) 
% alt_matrisin 1,2,4 satırlarını listeleme
```

#### Matrislerin Boyutunun Değiştirilmesi

```MATLAB
Z = 5:6
Z(4,1:3) = 1  % Z vektörünü 4 satır 3 sütun olacak şekilde genişlettik
% 4. satır ile 1,2 ve 3. sutun elemanlarına 1 degeri konuldu kalan elemanlara otomatik 0 atandı 
```

#### Matrislerin Satır/Sütünunun Silinmesi

```MATLAB
X(:,1) = []  % X matrisinin 1. sütununu sildik
X(2,:) = []  % X matrisinin 2. satırını sildik
```

#### Matrislerin Aritmetik işlemleri

Matrislerde toplama ve cıkarma islemi yapılabilmesi icin matrislerin aynı turden olması yani **esit satır ve esit sutun** sayılarına sahip olması gereklidir

```MATLAB
x = [ 1 2 3;4 5 6]
y = [-1 -2 -3;-4 -5 -6]
x+y % 2x3 0 matris
```

Matrislerde carpma isleminin yapılabilmesi icin, **ilk** matrisin **sutun** sayısı, **ikinci** matrisin **satır** sayısına **esit** olmalıdır

M12 * N21 = K11

Sadece kare matrislerin üssü alınabilir. Çünkü sadece o durumda birinci matrisin sutun sayisi ikinci matrisin satır sayısına esit olur.

```MATLAB
t = ones(2) % 2x2 matris
t^2 % t*t
```

#### Eleman Elemana Hesaplama İşlemleri

Eleman elamana çarpım

```MATLAB
A.*B 
B = 3*A;  B = 3.*A; % denk ifadeler (skaler ile carpim sagdan soldan fark etmez)
C = A/5; C = A./5 % denk ifadeler
```

```MATLAB
a5 = [1;2]; b5 = [1 3;2 4] % matris boyutlarını gözet
ans 1 3;4 8

a10 = [0 1]
b10 = [1;2;3;4;5]
a10.*b10
ans 0 1;0 2;0 3;0 4
```

Eleman elemana bölme

```MATLAB
x = [2 4]
y = [1 2]
x./y % x'in elemanları / y'nin elemanalrı 
ans  2 2
x.\y % y'nin elemanları / x'in elemanları  x.\y == y./x
ans 1/2 1/2
```

Eleman elemana üst alma 

```MATLAB
x1 = [1 2 3]
x1.^2 % ans 1 4 9
```

### MATLAB'da Matrisler ile İlgili Özel fonksyonlar

Determinant  

```MATLAB
m = [0 1;2 3]       
det(m) % 0.3 - 1.2 = -2 % matrisin determinantı 
det(m*n) % iki matrisin çarpımının determinantı, determinantların çarpımına eşittir
det(m)*det(n)
```

Bir matrisin determinantı sıfırdan farklı ise, o matrsin tersi vardır 
bu durumda matrisin tersinin determinantı, aynı matrisin determinantının tersine esittir

```MATLAB
det(m^-1) % m matrisinin tersinin determinatı 
det(m)^-1 % m matrisinin determinantının tersi
```

Bir matrisin determinantı ile tersinin determinantı çarpımı 1 dir.
Veya bir matrisin kendisi ile tersinin çarpımının determinantı 1 dir.

```MATLAB
det(m^-1) % m matrisinin tersinin determinatı 
det(m)^-1 % m matrisinin determinantının tersi
```

```MATLAB
det(m) == det(m')  %bir matrisin transpozesinin  determinantı kendi determinantına eşittir.
```

```MATLAB
t = [9 13 7 ; 11 8 4 ; 2 10 3]
rank(t) % ans 3 
% the maximum number of linearly independent row vectors in the matrix
```

```MATLAB
poly(t) % tanımlanmış bir matrisin karakteristik denklemini verir
trace(t) % köşegen elamanlarının toplamı
inv(t) % matrisin tersini verir 
eig(t) % matrisin özdegerini verir (özdeger ?)
[y,z] = eig(t) % matrisin öz vektörlerini ve öz değerlerini verir 
orth(t) % matrisin ortagonal matrisini verir
```

```MATLAB
a = 5:10 [5,...,10]
length(a) % vektörün uzunlugunu verir
sum(t) % sutun vektorlerinin elemanlarının toplamını verir 
sum(t(:)) % t nin tum elemanlarını sutun vektoru yapar ve onu toplar
mean(t) % sutun vektorlerinin elemanlarıın toplamını verir, sum'a benzer
max(t)
min(t)
```

```MATLAB
u = 1:4; k = [1:3;4:6]
prod(u) % u vektorunun elemanlarının carpimini verir
prod(k) ans = 4 10 18  % k matrisinin sutun elemanlarını çarpar 
```

```MATLAB 
sign(v); sign(n) % vekorun pozitif elemanları icin 1 negatif elemanları icin 0 verir
```

```MATLAB 
T = randi([0,100],1,10)
index = find(T>40) % 40 tan buyuk elemanların indeksini tutan vektor
```

```MATLAB 
fix(y) % 0'a yuvarlar
floor(y) % kucuge yuvarlar
ceil(y) % buyuge yuvarlar
round (y) % en yakın tam sayiya yuvarlar
sort(y) % vektoru yada matrsinin sutun elemanlarını sıralar
```

#### Aritmetik Operator Öncelik Sıralaması 

```MATLAB 
2^2^3 % 64 mü yoksa 256 mı ? soldan saga isledigi icin 64
3*2^2 % 12 
~ % not operatoru
and(A) % herhangi bir operator 1 ise logic 1 dondurur
any(A6(2,:)<0) % A6 matrisinin 2. satırındaki elemanların 0 dan küçük olup olmadığını kontrol eder
```

```MATLAB 
c{1,1} = uint16([2 3;4 5]) % Matlab cell array
```

#### Trigonometrik Fonksyonlar

```MATLAB 
sin(pi/180*90)  % 90 derecenin radyan hali
sin(90)         % başka bir açının radyan hali
d = [0 1 -1]
180/pi*asin(d)  % ters fonksiyonların kullanışı
180/pi*acos(d)
```
#### Logaritmik ve Ustsel Fonksyonlar

```MATLAB 
log(1)    % loge(1) = ln1 = 0
exp(1) % e
log10(10000) 
sqrt(4)   % 2.dereceden kök içinde 4 = 2
```
#### Kompleks Sayılar

```MATLAB 
real(x)     % karmaşık sayının real kısmı = 3
imag(x)    % karmaşık sayının sanal kısmı
abs(x)     % karmaşık sayının mutlak değeri
conj(x)    % karmaşık sayının eşleniği
```

### Matlab Betimsel Istatislik Komtları
```MATLAB 
[max_eleman,max_eleman_indisi] = max(x)
max(B,[],2) % her satırdaki maksimum eleman
[minimum_eleman,minimum_eleman_indeksi] = min(x)
min(T,[],2) % bütün satırlardaki minimum elemanlar
std(A) % sütunların standart sapması
median(A) % sütun elemanları medyanı
mean(Z) % sütun elemanları ortalaması
```

### Polinom Uygulamaları 

P(s)=s^4 - 6 s^3 + 11 s^2 - 6s polinomunun koklerinin matlabda bulunması
```MATLAB 
katsayilar = [1 -6 11 -6 0]  % polinom vektorle boyle ifade edilebilir 
polinom_kokleri2 = roots(katsayilar2)
```

Polinomların Çarpılması 
```MATLAB 
k_p1 = [3 0 2 1];   % 4 bilinmeyenli
k_p2 = [2 10 1];    % 3 bilinmeyenli
k_yenip = conv(k_p1,k_p2)  % parametrelerin yeri degisede sonuc degismez
```

Polinomların Bölünmesi 

```MATLAB 
k_p1 = [3 0 2 1];   % 4 bilinmeyenli
k_p2 = [2 10 1];    % 3 bilinmeyenli
[bolum,kalan] = deconv(k_p1,k_p2)  % deconv
```

Kökleri Bilinen Bir Polinomu Elde Etmek
```MATLAB 
poly([-2 -3 -4]) % koklerden polinomu 
A = [0 1;3 5];
poly(A) % A matrisinin karaktersitik denklemi = x^2 -5x -3
roots(poly(A)) % A matrisinin karakteristik denkleminin kökleri

% bir matrisin karakteristik denkleminin kökleri ile
% aynı matrisin eig fonksiyonuna parametre olarak girilmesi ile aynı sonucunu verir
% format long olarak bakıldığında çok küçük bir fark vardır
eig(A)
``` 

Polinomda Bilinmeyenin Yerine Değer Atanması
```MATLAB 
polinom = [1 0 4 2 0 0];
p10 = polyval(polinom,10)
```

Polinomun türevinin ve integralinin alınması alınması
```MATLAB 
plnm = [1 0 4 2 0 0]; % türev polinom katsayılarının [5 0 12 4 0] olması beklenir.
polyder(plnm)
p3 = [3 2 1];
polyint(p3) 
```

Polinomial Eğri Uydurulması
```MATLAB 
x_giris = [0 1 2 3];
y_cikis = [3 6 40 100];
polyfit(x_giris,y_cikis,3)    % 3. mertebeden olmasını istiyoruz
```

### Sembolik Hesaplama
```MATLAB 
syms x; % x değişkeninin sembolik olarak tanımlama
sym(pi/6) % nümerik değer vermez cebirsel ifade olarak çıktı verir
vpa(pi/6) ans = 0.52359877559829887307710723054658 % variable precision arithmetic
y(x) = piecewise(x<0, -1, x>0, 1) % parçalı fonksyon olusturma
```

Fonksyon olusturup, degerini hesaplayabiliriz
```MATLAB 
syms f(x)
f(x) = x^4-2*x^3+6*x^2-2*x+10
f(-5) ans = 1045

% dogrular arasındaki kesişme noktasını solve kullanarak bulmak
syms x y1 y2
y1 = x+3; y2 = 3*x;
solve(y1 == y2)

% varsayımlar
assume(x,'real')
assumeAlso( x > 0)
assumptions(x)
assume(x,'clear')

syms t;
(cos(t)^2+sin(t)^2)
simplify(cos(t)^2+sin(t)^2) % cebirsel ifadeyi basitlestirir
expand(cos(a+b)) % cebirsel ifadeyi açar

syms s
G=s+4+2/(s+4)+3/(s+2)
[pay,payda] = numden(G) % pay paydayı ayırır
poly2sym([ 1 4 -7 -10],t) % polinomdan sembolik ifade olusturmak
sym2poly(4*s^3-2*s^2+5*s-16) % sembolik ifadeyi polinom yapar

fplot(E,[-6,6]) % sembolik ifadeyi çizer
```


## Vize Hazırlık Soruları
```MATLAB 

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
```

## matlab harici konular  
kodlama sorularını kendin implement et
vetktorler ve donusumler ile ilgili not al
sınav notunu hazırla
