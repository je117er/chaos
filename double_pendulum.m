
%--------------------------------------------------------------------------
%-------------- Double Pendulum--------------------------------------------
%--------------------------------------------------------------------------
clc
close all
clear all
%---------Parameters------------------------------------------------------
l1=1; l2=2 ; m1=2 ; m2=1; g=9.8;
%---------initial condition-----------------------------------------------
tspan=100;
theta1=2.966;
theta11=2.967;
theta111=2.968;
theta1_prime=0;
theta2=0;
theta2_prime=0;
y0=[theta1 theta1_prime theta2 theta2_prime];
y00=[theta11 theta1_prime theta2 theta2_prime];
y000=[theta111 theta1_prime theta2 theta2_prime];
[t,y]=ode45(@pend, [0 ,tspan],y0);
[tt,yy]=ode45(@pend, [0 ,tspan],y00);
[ttt,yyy]=ode45(@pend, [0 ,tspan],y000);
%---position of mass 1 and mass 2----------------------------------------
x1=l1*sin(y(:,1));
y1=-l1*cos(y(:,1));
x2=l1*sin(y(:,1))+l2*sin(y(:,3));
y2=-l1*cos(y(:,1))-l2*cos(y(:,3));
%------visualizing the result---------------------------------------------
%    figure(1)
%    plot(x1,y1,'linewidth',2)
%    hold on
%    plot(x2,y2,'r','linewidth',2)
%    h=gca; 
%    get(h,'fontSize') 
%    set(h,'fontSize',14)
%    legend('m_1', 'm_2');
%    xlabel('X','fontSize',14);
%    ylabel('Y','fontSize',14);
%    fh = figure(1);
%    set(fh, 'color', 'white'); 
% %    size(y(:,1))
   
   figure(2)
   length(y)
   plot(y(:,1),'b','linewidth',2)
   hold on
   plot(yy(:,1), 'g', 'linewidth', 2)
   hold on
   plot(yyy(:,1),'r','linewidth',2)
   h=gca; 
   get(h,'fontSize') 
   set(h,'fontSize',14)
   legend('\theta_1(t=0)=2.966', '\theta_1(t=0)=2.967', '\theta_1(t=0)=2.968')
   xlabel('time','fontSize',14);
   ylabel('theta','fontSize',14);
   fh = figure(2);
   set(fh, 'color', 'white'); 
%    
%    
%    %----movie of double pendulum--------------------------------------
%    
%    figure(3)
%    Ncount=0;
%    fram=0;
%    
%      for i=1:length(y)
%          Ncount=Ncount+1;
%          fram=fram+1;
%          plot(0, 0,'.','markersize',20);
%          hold on
%          plot(x1(i),y1(i),'.','markersize',20);
%          plot(x2(i),y2(i),'.','markersize',20);
%          hold off
%          line([0 x1(i)], [0 y1(i)],'Linewidth',2);
%          axis([-(l1+l2) l1+l2 -(l1+l2) l1+l2]);
%          line([x1(i) x2(i)], [y1(i) y2(i)],'linewidth',2);
%          h=gca; 
%          get(h,'fontSize') 
%          set(h,'fontSize',12)
%          xlabel('X','fontSize',12);
%          ylabel('Y','fontSize',12);
%          title('Chaotic Motion','fontsize',14)
%          fh = figure(3);
%          set(fh, 'color', 'white'); 
%          F=getframe;
%          end
%       movie(F,fram,20)
%       
 %-----------------------------------------------------------------------     
