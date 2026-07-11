x = 0:0.001:2*pi	% vector x going from 0 to 2*pi with increment of 0.001 ,the input range of values 
y = atan(x)         % vector y is atang(x) 

figure
plot(x, y, '--')
hold on
% keep the current figure available for more plotting 
plot(x, asin(x))  
xlabel('angle')
ylabel('y') 
legend('arctan', 'arcsin')
