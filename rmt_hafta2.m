% ilk haftanın devamı 
a = [5 45, 9.3 sqrt(-6)] % virgul bosluk fark etmiyor 
b = [1,2,3,4,5]
b = [b,6,7,8,9] % genisleyen matris 

%H1 , H2= [1,2,3;1,2,3] , [1,2,3;1,2,3] % bekledigin gibi çalışmıyor parabirimi gosterimindede 

e = [5 6 ; 7 8]; % satır calisir ekranda gosterilmez

mat1 = [0:9 ; 10:19]

slice = mat1(4:end,4:end) % !!! bunu kacırdım tam olarak anla () bu olayıda anla

mat1(1,3) % burdaki shenanigans ları anla 

5/inf % sayı / sonsuz = 0
0/0, 0*Inf % 0 x sonsuz = NaN belirsiz

eps % saklayabildigim 2 sayı arasındaki fark 

zeros(1,5)

rand() % (0,1) acık aralıgı 

mat2 = rand(5)

mat3 = randi(100,5,4) % 0 ile 100 arasında 5 x 4 matrice olustur 

inval = rand() * 25 + 65 % !!! bunu iyi anla  65 ile 90 arasında rastgele sayı

% MATRISLERIN BOYUTUNUN DEGISTIRILMESI 

c = randi(100,6,5)
d = reshape(c,5,6)
% d = reshape(c,1,24) bunu yapamaz eleman sayısının aynı olması gerekir 

%tahta =  % !!! satranc tahtası yapmaca  bunu kacırdım kendin yapmaya calis 

M = magic(4)

D = repmat(magic(3),2,3) % !!! bura eksik oldu buradaki olayı tam olarak anla 
sum(D)
sum(D')

E = rand(5,4,3,2) * 100
mean(E)
max(E(:)) % tek seferde maks bulmaca akıllıca :) 
size(E)
length(E) % 5 x 4 luk matrisin en buyuk degeri 5 oldugu icin 5 verir 
max(size(E)) % yukardakinin aynısı

% bir kısım seyler gozden kactı onlara yeniden bak 

% LOJIK ISLEMLER

x = round(rand(5)) 
x == 0 % akıllıca oldu 

y = [-8 0 1; 2 3 4.5] 
a = find(y >= -1)
konumlar = find(x<0)
y(konumlar) = -1 * y(konumlar)