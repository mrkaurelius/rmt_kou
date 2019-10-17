vektor_normu = 5;
vektor_acisi = 29;
beta_acisi = 35;

x = 0;
y = 0;
r =  vektor_normu;
cartesian_size = r+1;
hh_lenght = r;
inp_degree = vektor_acisi;
inp_beta = beta_acisi;

% vektorun uzunlugunu iste ve onu yarıcap olarak ayarla
% koordinat sistemi uzunluklarını ayarla
cc_line_width = 4;

%(0,0),(1,0)
plot([0 cartesian_size],[0 0],'b','LineWidth',cc_line_width)
hold on

%(0,0),(0,1)
plot([0 0],[0 cartesian_size],'b','LineWidth',cc_line_width)
hold on

%(0,0),(-1,0)
plot([0 -cartesian_size],[0 0],'b','LineWidth',cc_line_width)
hold on

%(0,0),(0,-1)
plot([0 0],[0 -cartesian_size],'b','LineWidth',cc_line_width)
hold on


th = 0:pi/50:2*pi; % 50 sampling ,r * 2pi = 6.28... radyan cinsinden
xunit = r * cos(th) + x; %nokta hesaplanıyor
yunit = r * sin(th) + y;
h = plot(xunit, yunit,'b','LineWidth',cc_line_width = 4
);
hold on


% plot beta
  plot([0 cosd(inp_degree)*hh_lenght],[0 sind(inp_degree)*hh_lenght],'r','LineWidth',cc_line_width)
  hold on
  
for inp_beta = inp_degree+1:1:inp_beta
  figure(1)
  p= plot([0 cosd(inp_beta)*hh_lenght],[0 sind(inp_beta)*hh_lenght],'g','LineWidth',cc_line_width)
  
  pause(1);
  delete(p)
 endfor

