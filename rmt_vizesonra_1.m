%% koordinat sistemleri yeniden
% hocanin dersi anlattigi kitap: ? 692 sayfa
% neden koordinat sistemlerini biribiri ile iliskilendiriyoruz ? 
% cisimlerin biribirlerine gore konumlarını hesaplamak icin 
% nesne ile nokta farkı: orientation (yonelim)
% zor problem: robot odanın neresinde 
% koordinat donusumleri kavramsal anlamda onemli
% koordinat yonlu graflarının kesikli bir biciimde hesaplanması

%% robotik kutuphanesi
% rot2(90,'deg') % 90 derece dondur
% rotasyon matrislerinin ozellikleri ( determinantı tersi vb ) 
% p = [ 3 5 ]' % nokta dogru tanımı
% hem rotasyon hem oteleme matrisi  ( homojen donusum matrisi? )?
% t1 = transl2(1,2) % oteleme vektoru verildiginde homojen donusum matrisi verir 
% t2 = trot2() % dondurme 
% trplot2() % argumandan gelen fonksyonun cıktısını ciz
% comutative olmak ? 
% rot2() ( sadece donusum ) ile trot2() ( homojen donusum matrisi ) nin farkı ?
% homojen donusum matrislerinin carpımı homejen matris verir
% hocanin kitapta anlattigi yerlerin kodlarını yaz 
% matrislerin ozellikleri ve olaylarını anla 
% h2e() % homojen2euler
% rotx() % x ekseninde cevir
%... atladıgım kısımlar 
% rpy2r() XYZ veya ZYX row pitch yav ! bunu dogrula
% t2r() % sadece oteleme matrisi
