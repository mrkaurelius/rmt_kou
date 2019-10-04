% 2.10.19 rmt 3. hafta
%% tekrar
zeros(5,1) % 5 satır 1 sutun 
5^3*2-1 % operator onceligi
b = .157e1 % bilimsel gosterim

!1 % !!! matlabda isletim sistemi komutu cagirir octavda not olarak kullanılıyor
not(0) % matlab'ta bunu kullan
a = (1 + eps) % eps = 2 sayı arasındaki en az fark

%% char dizisi
isim1 = 'mehmet'
isim2 = ['ali','veli']
isim3 = "ali veli", "ahmet mehmet" % virgulden sonra ayrı bir ifade olarak algılanır 
isim4 = ["ali mehmet";"ahmet hasan"; "asdfasdf"]
% isim5 = ["asdf" , "qwer"; 1234 , 5678 ] % octavda karsilihi yok matlabda hepsini string
% yapıyor

cift_sayilar = 0:2:10 % comprehesion
cift_sayilar_tersten = 10:-2:0

x = 8;
format rat
m1 = x./(1:2:x+1) % ! bunu anla

%% !!! ODEV LINSPACE FONKSYONUNU IMPLEMENT ET
linspace(0,10)
% linspace 2 parametre alırsa parca sayisini default 100 olarak atar
l0 = linspace(0,5,3)
l1 = linspace(10,0,5) % 10 dan 0 a kadar 5 esit parcaya bol
% fonskyona gelen parametre sayısı ??

A = [1 2 3;4 5 6;7 8 9]
alt_matris = A(:,end)

%matrisin koselerdeki elemanlarını bulma cevresi
A2 = [A;1 2 3] % matrise matris ekleme sutun sayisi ayni oldugu surece keler 

vek = [1 2 3] % vektorun her elemanın teker teker ustunu al 

eye(2,3) % birim matris tum bir matrisi tersiyle carparsan tersi cikar 
% eye() *-> birim matris
diag(ones(1,3))
% daig() -> kosegeni d vektorun elemanlarından olsuan diagonal bir matris uretir
A = [1 2 3;4 5 6;7 8 9; 10 11 12]
diag(A) % parametreden geçen eleman farkı (matris -> vektor ) (vektor -> matris) seklinde
% det() determinant 

m = [1 2;3 4]
m1 = [1 2;3 4;2 4]
m2 = [m;1 8]
det(m)

% bir matrisin rankı ne icin kullanılır matrisin rankı tam olarak nedir 
% denkelem cozmede nerde nasıl kullanıyoruz
% denklenlerin birinden farklı olup olmadigini anlama ?? tam olarak anla
rank(m)
rank(m1)
rank(m2)
% !!! kacirdigim fonksyanalara bak

%y = log10(1000) % parametrelere bak 
% opengl patlıyor gnu plot kullanmaya calis

and_deneme = 5&1
and_deneme = 0&1
and_deneme = 0&5
and_deneme = 1&5

% baya bir fonskyon kaçtı onlara bak

c1 = {int8([2 3]) "merhaba yalan dunya"} % burada sair ne anlatmak istemis

%% ODEVLER ILE ILGILI KONULAR 
myfunc(1,1,1) % bu fonskyonu tanımla
%conv fonksyonunu implemt et 
conv