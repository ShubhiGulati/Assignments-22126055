% R=55;
R=55;
% considering 100points on the circle
num_point=100;

x=zeros(1,num_point);
y=zeros(1,num_point);

for i=1:num_point
    theta=2*pi*(i-1)/num_point;
    x(i)=R*cos(theta);
y(i)=R*sin(theta);
end

plot(x,y,'b+','linewidth',5);

title('Shubhi Gulati-2D Circle');