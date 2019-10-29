% tekrar 
% uc basamaklı tek ve cift sayilari saklayan vektorler

% ilk 10 dogal sayinin karelerinin toplamı

a = 1:10
b = sum(a.^2)
% daha iyisi sum(x) sekline tek satir 

% N e kadar karelerinin toplamı ile toplamın karesinin farkı 

% 3,4,5...3,4,5 100 3,4,5 er tane repmat ile ()

% tek sayılı sutun indisli elemanlarına 55 ekle 
%1:2
% random matris olusturmayi anla
f = [1 2 3 4 5 6]

ones(3) % 3x3 birlik matris
ones(3,1) % 3x1 birlik matris
diag(ones(3,1))
ones(3) - eye(3) + zeros(3) + diag(ones(3,1))

b = [1 2 3
    4 5 6
    7 8 9] % gorundugu gibi
    
% kolon operatoru kullandarak b nin tum elemanlarını iceren sutun matris 
c = b(:) % hepsini ver 
d = b(:,3)
e = [b(:,1) b(:,3)]
f = [b(:,1);b(:,3)]

c = diag(diag(b))
% SINAV 40 SORU TEK SATIRLIK CEVAPLAR 
% 1.sonlu sayida asama ile istenilen hassasiyette 1
% model hatası (türetilmedeki basit varsayımlar pi:3.14) hesaba katılmayan ve katılamayak olan
% 2.kesme hatası (truncation error )
% sonlu sayida denemeyle belli bir hatanın altına dusmesi 
% 3. yuvarlama hatası 
% bilgisayarda bir sayinin saklanmasi (aritmetik islemlerin sonucu olarak ?)

% polinomlar 
kts = [1 3 2] % katsayilar
kl = roots(kts) % calisiyor kokler

kl.*kl+3*kl+2 % burada sair ne demek istiyor 
kts(1)*(kl.*kl)+kts(2)*(kl)+kts(3) % kokler ve katsayilar 

% conv deconv bunları anla orneklerine bak 

poly([1 0]) % koklerden katsayılara gec
polyval([1 3 2],[-2 -1 0])
polyder([1 3 2])
% polyint() orneklerine bak 
% polinom ve integral ornekleri yap
% konumu polinom olarak verilen aracın 0 100 hızlanmasını subplot olarak ciz
% konumun konum -> hız -> ivme 
% hocanin notlarından bulmaya calis olmazsa herhangi bir polinom isi gorur

% ayni problemi sembolik matematik kutuphanesi kullanarak coz 
% !!! sembolik matematik kutuphanesini incele 

diff([2 3]) % girdi ve cıktının türlerini ve olayini anla 
% int() yok integral var 
% mathmatical assumptions sembolik matematikte

% matrisin rank'ı ?
% lineer bagımlılık ?

% lineer denkelem sistemleri ?
% matrislerle ilgili formuller (matrisin tersi vb..)
% matlabda lineer denkelem sistemleri ?

x = b\b % oldu mldivide ? 

% rankına bakıp liner sistemi coz
% sembolik ifadelerle denklemi coz
%!!!solve  karsiligi tam yok fsolve linsolve var 
% hocanin notlarina bak
%!!!handle karsiligi yok
% patch verilen noktaların birlesiminin icini boyar 




