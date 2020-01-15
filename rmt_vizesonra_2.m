%% queaterninons 
% homojen matrislerin carpımlari ile kameradan tespit edilen vektorun
% kola gore tanımlanması 
% queaterninon kullanarak gimball locklardan kurtulabiliriz 
% queaterninon carimi komitatif ( degisebilen degil )
% queaterninonların ozellikleri 
% euler rotation ZYZ 
% cardinan angles XYZ ?
% identity( öz? ), unit 
% !!! queaterninonlar rotasyon (ortagonal) matrislerine donusturulebilir
% amac neydi gimball locka takılmamak 
% queaterninonları vektorle carparsan geri vektor alırsın
%% robotic toolbox, jkpose tekrarı
% !!! kitapta gecen toolbox api orneklerini incele
% transl() % homojen rotasyon matrisi
[eye(3) [2 9 3]' ; zeros(1,3) 1] % !!! bu dogrumu emin ol
% rotx(), trotx() ve transl() nin implementasyonları
% koordinat sistemlerinin ozelliklerini tekraret
% queaterninon ile vektoru carparsak poze(position orientation) (ksi) yi elde ederiz
% queaterninonların carpına hamilton product denir ici bos nokta ici dolu nokta hikayesi 
 
%% using toolbox (kitap bolumu )
% T = SE2(1,2,30,'deg') 1 2 otele 30 derece dondur, nesne dondurur
% SE3() ?
% !!! soru robot odada hareket etti dondu kamera surada kameradan obje tespit edildi kameraya gore konumu su odaya gore objenin konumu nedir, yada robota gore
%% urdf ?
% eksenlerin renkleri
% yesil:Z 
% kırmızı:X
% mavi:Y

% m = randi([10 25], 5)
% printf("yalan dunya\n")
