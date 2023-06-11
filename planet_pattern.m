%Author : Hemant Kumar Meena
%Youtube : https://www.youtube.com/channel/UCTgi3dJ3qCfmn9nlIgjvBlg

close all
clear
clc

%data
theta1=0;theta2=0;
p1.x=0;p1.y=0;
p2.x=0;p2.y=0;
r1=1;r2=0.39;
t1=365;t2=88;
m=4;
counter=1;
rl=max([r1,r2]);

hold on
axis equal 
xlim([-1.2*rl,1.2*rl])
ylim([-1.2*rl,1.2*rl])

%plot orbit
plot(r1*cos(linspace(0,2*pi,100)),r1*sin(linspace(0,2*pi,100)))
plot(r2*cos(linspace(0,2*pi,100)),r2*sin(linspace(0,2*pi,100)))

%plot pattern
while counter<=640
    theta1=theta1+m*2*pi/t1;
    theta2=theta2+m*2*pi/t2;
    p1.x=r1*cos(theta1);p1.y=r1*sin(theta1);
    p2.x=r2*cos(theta2);p2.y=r2*sin(theta2);
    
    line([p1.x,p2.x],[p1.y,p2.y],'Color','black')
    counter=counter+1;
    pause(0.1)
end
