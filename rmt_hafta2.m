% ilk haftanın devamı 
%% matris başlatma
a = [5 45, 9.3 sqrt(-6)] % virgul bosluk fark etmiyor 
b = [1,2,3,4,5];
b = [b,6,7,8,9]; % genisleyen matris 
e = [5 6 ; 7 8]; % 
mat1 = [0:9 ; 10:19]
mat1(:)'; % tum elemanların vektoru (tek satir matrisi)

%% matris maniplülasyonu
slice = mat1(4:end,4:end); % 4 ten sonraki satır ve sutunların kesimlerini al
mat1(1,3) %  1. satir 3. sutun

%% matlab builtin
5/inf; % sayı / sonsuz = 0
0/0, 0*Inf; % 0 x sonsuz = NaN belirsiz
5.2 , 5,2; % nasil anlasildigina dikkat et
eps % returns the distance form 1.0 and next larger double precision number,
% that is 2^52

%% random ve formatlı matris olusturma
zeros(1,5);
rand(); % (0,1) acık aralıgı 
mat2 = rand(5); % 5x5 (0,1) aralığında random matris 
mat3 = randi(100,5,4); % 0 ile 100 arasında 5 x 4 matrice olustur 
inval = rand() * 25 + 65; % !!! bunu iyi anla  65 ile 90 arasında rastgele sayı
mat4 = diag(4) % diagonal matix, köşegen matris

%% matrislerin boyut manipülasyonu
c = randi(100,6,5);
d = reshape(c,5,6);
%d = reshape(c,1,24) bunu yapamaz eleman sayısının aynı olması gerekir 
tahta_satir = [1 0 1 0 1 0 1 0];
tahta = repmat(tahta_satir,8,1); % satırı 8 kere sutunu 1 kere kopyalar
a = magic(3); % magic square
D = repmat(a,2,3);  % a matrisinin bir eleman olarak dusun ve bir elemandan olusan
% 2x3 matris olustur

%% matris aritmetik işlemleri
D = magic(5);
sum(D);
sum(D');
E = rand(5,4,3) * 100 % 5x4 3 tane matrisi 100 skaleri ile çarp

mean(E); % sutunların ortalamasını alır 
mean(E(:)); % tum elemanların ortalaması
max(E); % sutunların en buyugunu alır 
max(E(:)); % tek seferde maks bulmaca akıllıca :) 
size(E); % satır sutun ve matris sayisini doner
length(E); % 5 x 4 luk matrisin en buyuk degeri 5 oldugu icin 5 verir 
max(size(E)); % yukardakinin aynısı
% bir kısım seyler gozden kactı onlara yeniden bak 
x = round(rand(5));

%% matrix eleman bulma ve degiştirme
y = [-8 0 1; 2 3 4.5]
a = find(y >= -1)
konumlar = find(x<0) % kosulu saglıyanların indisini al
y(konumlar) = -1 * y(konumlar) % indisteki elemanları degistir

