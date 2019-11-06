x = linspace(-pi,pi,20);
y = sin(x);



plot(x,y,'gD-.',    'LineWidth',5,...
                    'MarkerEdgeColor','y',...
                    'MarkerFaceColor','b',...
                    'MarkerSize',20)


hold on   
figure(3)
plot(x,cos(x))

figure(1)