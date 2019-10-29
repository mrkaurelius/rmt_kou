% fonksyonu anla
% cikti sayisini nasil ayarliyacagiz 
% fonksyon cagirildiginda kac eleman ciktisi verecegini biliyor 
function [o1,o2,o3] = myfunc(p1,p2,p3) %parametreler buraya 
  if nargin == 1
    printf("output sayisi %d \n",nargout)
    printf("parametre sayisi 1, %d \n",p1)
    o1 = p1 + 1;
    o2 = 0;
    %%o3 = null;
  endif
  if nargin == 2
    printf("parametre sayisi 2\n")
  endif
  if nargin == 3
    printf("parametre sayisi 3\n")
  endif

end