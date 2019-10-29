% noktaları 1 2 3 4. notka  1 2 3 4  satır olacak sekilde matris ile ver
% 3. renk parametresini "r" sekilen gonderin 
% her yuzeye ayri renk icin "rgbrgb" sekilde goderin
function out = kitap_ciz(pts,ht,color)  
  n1 = pts(1,:);
  n2 = pts(2,:);
  n3 = pts(3,:);
  n4 = pts(4,:);
  n5 = n1; n5(3) = n5(3) + ht;
  n6 = n2; n6(3) = n6(3) + ht;
  n7 = n3; n7(3) = n7(3) + ht;
  n8 = n4; n8(3) = n8(3) + ht;      
 
  % 1 4 x un farkının 2 katı 
  limx = 2*abs(n1(1) - n4(1));
  % 1 2 y farkının 2 katı 
  limy = 2*abs(n1(2) - n2(2));
  xlim([0 limx]);
  ylim([0 limy]);
  zlim([0 ht*2]);
  
  if nargin == 2
    
    
    y1 = patch([n1(1),n2(1),n3(1),n4(1)],[n1(2),n2(2),n3(2),n4(2)],
    [n1(3),n2(3),n3(3),n4(3)],'b');
    
    y2 = patch([n5(1),n6(1),n7(1),n7(1)],[n5(2),n6(2),n7(2),n8(2)],
    [n5(3),n6(3),n7(3),n8(3)],'b');
    
    % 1 2 6 5
    y3 = patch([n1(1),n2(1),n6(1),n5(1)],[n1(2),n2(2),n6(2),n5(2)],
    [n1(3),n2(3),n6(3),n5(3)],'b');
    
    % 1 4 8 5
    y4 = patch([n1(1),n4(1),n8(1),n5(1)],[n1(2),n4(2),n8(2),n5(2)],
    [n1(3),n4(3),n8(3),n5(3)],'b');
    
    % 4 3 7 8  
    y5 = patch([n4(1),n3(1),n7(1),n8(1)],[n4(2),n3(2),n7(2),n8(2)],
    [n4(3),n3(3),n7(3),n8(3)],'b');
    
    % 2 3 7 6
    y6 = patch([n2(1),n3(1),n7(1),n6(1)],[n2(2),n3(2),n7(2),n6(2)],
    [n2(3),n3(3),n7(3),n6(3)],'b');
    
  end
  if nargin == 3
    if length(color) == 1
      
      y1 = patch([n1(1),n2(1),n3(1),n4(1)],[n1(2),n2(2),n3(2),n4(2)],
      [n1(3),n2(3),n3(3),n4(3)],color(1));
      
      y2 = patch([n5(1),n6(1),n7(1),n7(1)],[n5(2),n6(2),n7(2),n8(2)],
      [n5(3),n6(3),n7(3),n8(3)],color(1));
      
      % 1 2 6 5
      y3 = patch([n1(1),n2(1),n6(1),n5(1)],[n1(2),n2(2),n6(2),n5(2)],
      [n1(3),n2(3),n6(3),n5(3)],color(1));
      
      % 1 4 8 5
      y4 = patch([n1(1),n4(1),n8(1),n5(1)],[n1(2),n4(2),n8(2),n5(2)],
      [n1(3),n4(3),n8(3),n5(3)],color(1));
      
      % 4 3 7 8  
      y5 = patch([n4(1),n3(1),n7(1),n8(1)],[n4(2),n3(2),n7(2),n8(2)],
      [n4(3),n3(3),n7(3),n8(3)],color(1));
      
      % 2 3 7 6
      y6 = patch([n2(1),n3(1),n7(1),n6(1)],[n2(2),n3(2),n7(2),n6(2)],
      [n2(3),n3(3),n7(3),n6(3)],color(1));      
      
    end
    
    if length(color) == 6
      
      y1 = patch([n1(1),n2(1),n3(1),n4(1)],[n1(2),n2(2),n3(2),n4(2)],
      [n1(3),n2(3),n3(3),n4(3)],color(1));
      
      y2 = patch([n5(1),n6(1),n7(1),n7(1)],[n5(2),n6(2),n7(2),n8(2)],
      [n5(3),n6(3),n7(3),n8(3)],color(2));
      
      % 1 2 6 5
      y3 = patch([n1(1),n2(1),n6(1),n5(1)],[n1(2),n2(2),n6(2),n5(2)],
      [n1(3),n2(3),n6(3),n5(3)],color(3));
      
      % 1 4 8 5
      y4 = patch([n1(1),n4(1),n8(1),n5(1)],[n1(2),n4(2),n8(2),n5(2)],
      [n1(3),n4(3),n8(3),n5(3)],color(4));
      
      % 4 3 7 8  
      y5 = patch([n4(1),n3(1),n7(1),n8(1)],[n4(2),n3(2),n7(2),n8(2)],
      [n4(3),n3(3),n7(3),n8(3)],color(5));
      
      % 2 3 7 6
      y6 = patch([n2(1),n3(1),n7(1),n6(1)],[n2(2),n3(2),n7(2),n6(2)],
      [n2(3),n3(3),n7(3),n6(3)],color(6));                   
    end
  end
