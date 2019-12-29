% dogrusal denkelem sistemlerinin cozumu 

% matris satırlarını degistirmek ? 
% matrisleri skaler ile carpmak (0 dan farklı)
% bir matrisin basamak bicimi ?
% basamak matrise cevirilmis matrisin sifirdan farklı satırları sayisina A matrisinin rankı denir
x1 = (randi([0, 10], [4,4])) % her seferinde degisir
% - Birim Matris eng: Identity Matrix 
% matrisin cebirsel (lineer) ozellikleri 
% bir matrisin tersinin olup olmadigini hesaplama 

A = [1 1;1 1]
inv(A) % octave uyari veriyor 

% - Tekil Matris 
% determinatı == 0 olan matris

% VEKTOR UZAYLARI 
% sadece buyuklukle ifade edilemeyen degerler bkz: newton
% rotasyon ? lineer transformasyon
% bir vektor matematiksel olarak nasıl ifade edilir 
% orjin etrafından dondurme 
% ! kesinlikle lineer transformasyon yapiliyor (3b1b)

% sin(alfa + beta) ?
% expand SEMBOLIK MATEMATIKTE 

% donme matrisi sin acilimindan gelen  formulun lineer uzayı transforme etmesi 
% saati lineer transformasyon ile yap 

%  ODEV Robor Silindir uzaklık hesaplama (ideal durum
% 2 dogru arsındaki aciyi bulma 

% Nokta (Skaler) Carpim (dot product )
% 1 degisme ozelligi 
% 2 skaler ile carpim
% 3 dagilma kurali
% dik eksenlerin carpımı 0 
% x y z eksenlerinin birim vektorleri 
% neleri hesaplayabiliriz 
% !!! SINAV SORUSU 2 vektor arasındaki aciyi bul 

u = [2 3]
v = [1 2] 
dot(u,v) % sonuc sayi

% Vektorel Carpim
% ... 
% vektorel carpimin ozellikleri 

a = [2 1 3]
b = [1 0 2]

cross(a,b) % sonuc vektor 

% pose : konum, yonelim 
% 3 boyutta pose 
% birden fazla koordinat sistemi 
% kameradan alınan gorununtunun tekelege gore cevirilmesi 

% ROBOTIC TOOLBOX'A GECTIK MATLAB SART OLDU 
% READMEYE ROBOTIC TOOLBOX EKLE
 
 


