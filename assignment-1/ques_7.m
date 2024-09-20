% R=55;
R=55;
% considering 100points on the circle
num_point=100;

x=zeros(1,num_point);
y=zeros(1,num_point);
z=zeros(1,num_point);

for i=1:num_point
    theta=2*pi*(i-1)/num_point;
    x(i)=R*cos(theta);
y(i)=R*sin(theta);
z(i)=0;
end

plot3(x,y,z,'b+','linewidth',5);

title('Shubhi Gulati-3D Circle');