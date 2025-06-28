%% Teaching materials for ECE3060 - FK
%  Author : Billy ZHONG (fxzhong@cuhk.edu.cn)
%  Update Date : 2024/09/27
%  Notes: Velocity, Workspace and Singularity

%%
% This is the main function

close all;
clc;
clear all;

%set up the movie
writerObj1 = VideoWriter('Heter','MPEG-4'); % Name it.
writerObj1.FrameRate = 30; % How many frames per second.
writerObj1.Quality = 100;
open(writerObj1);

width = 800;
height = 600;

global fig1;
fig1 = figure('Position', [300, 100, width, height]);

set(fig1, 'WindowButtonDownFcn', @(varargin)ClickFcn(varargin, fig1));

global mouse_pt1 mouse_pt2 key MOUSE_OK;
mouse_pt1 = [0,0];      % Mouse drag start position
mouse_pt2 = [0,0];      % Mouse drag current position 
key = 0;         % 1 when key is down, 0 when key is released 
MOUSE_OK = false;

traj = [];
rd = [];

%% Robot parameters
l1 = 100;
l2 = 100;

theta_0 = [pi/6, -pi/6];
theta = theta_0;


%% simulation loop
while true

        tic

        % Robot FK
        x = l1*cos(theta(1)) + l2*cos(theta(1) + theta(2));
        y = l1*sin(theta(1)) + l2*sin(theta(1) + theta(2));
        r = [x,y]'; 

        % Analytical form of Jacobian
        J = [-l1*sin(theta(1)) - l2*sin(theta(1)+theta(2)),   -l2*sin(theta(1)+theta(2));
              l1*cos(theta(1)) + l2*cos(theta(1)+theta(2)),    l2*cos(theta(1)+theta(2))];

        % Input mouse position
        if MOUSE_OK
            rd = mouse_pt2';
        else
            rd = r;
        end

        % Design controller using dx based on r - rd
        dx = SaturateN(-0.1*(r - rd), 1);

        % Use Jacobian to calculate dq
        dq = inv(J)*dx;

        % Update dq at last
        theta = theta + dq';

        
        %% %%%%%%%%%%%%%%%%%%%%% All About Drawing %%%%%%%%%%%%%%%%%%%%%%%
        
        traj(end+1,:) = r';
        if size(traj,1) > 1
            plot(traj(:,1), traj(:,2), '-','LineWidth',1,'Color',[0.6,0.6,1]);hold on;
        end

        %% draw frame
        drawArrow = @(x,y,varargin) quiver( x(1),y(1),x(2)-x(1),y(2)-y(1),0, varargin{:});
        
        x1 = [0 100];
        y1 = [0 0];
        drawArrow(x1,y1,'linewidth',1,'color','k');
        
        x2 = [0 0];
        y2 = [0 100];
        drawArrow(x2,y2,'linewidth',1,'color','k');

        textt = 'x0';
        text(110, -10,textt,'Color','k','FontSize',10); 
        textt = 'y0';
        text(10, 110,textt,'Color','k','FontSize',10); 

        %% draw robot
        O1 = [0,0]';
        O2 = [l1*cos(theta(1)), l1*sin(theta(1))]';
        OE = r;
        plot([O1(1), O2(1)], [O1(2), O2(2)], 'k-','LineWidth',10);hold on;
        plot([O2(1), OE(1)], [O2(2), OE(2)], 'k-','LineWidth',10);hold on;
        circle(0,0,l1+l2);
        plot(O2(1), O2(2), 'ok','MarkerSize',15,'MarkerFaceColor','k');
        plot([O1(1)-10, O1(1)+10], [O1(2)-10, O1(2)-10], 'k-','LineWidth',3);
        plot([O1(1)-10, O1(1)+10], [O1(2)+10, O1(2)+10], 'k-','LineWidth',3);
        plot([O1(1)-10, O1(1)-10], [O1(2)+10, O1(2)-10], 'k-','LineWidth',3);
        plot([O1(1)+10, O1(1)+10], [O1(2)+10, O1(2)-10], 'k-','LineWidth',3);
        plot(rd(1), rd(2), 'ok','MarkerSize',10,'MarkerFaceColor','g');
        plot(OE(1), OE(2), 'ok','MarkerSize',10,'MarkerFaceColor','r');

        %% visualize data in text
        textt = ['[\theta_{1}, \theta_{2}]: [', num2str(theta(1)/pi*180, 3),'^{\circ}, ',num2str(theta(2)/pi*180, 3),'^{\circ}]'];
        text(-80, 180,textt,'Color','k','FontSize',20); 
        textt = ['[x, y]: [', num2str(x, 3),', ',num2str(y, 3),']'];
        text(-80, 150,textt,'Color','k','FontSize',20); 
        textt = ['|J|: ', num2str(0.001*det(J), 2)];
        text(-80, 120,textt,'Color','k','FontSize',20); 

        %% other figure configuration
        axis equal;
        grid on;
        xlim([-100 300]);
        set(gca,'XTick',-100:50:300);
        ylim([-200 200]);
        set(gca,'YTick',-200:50:200);
        visual = sprintf('2D Robot Simulation');
        title(visual);
        hold off;
        
        if strcmpi(get(fig1,'CurrentKey'),'q')
            %close all;
            break;
        end

        %     Video settings
        set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
        set(gcf, 'Toolbar', 'none', 'Menu', 'none');
       % frame = getframe(gcf); % 'gcf' can handle if you zoom in to take a movie.
       % writeVideo(writerObj1, frame);
        pause(0.03);


end


close(writerObj1); % Saves the movie.
disp('Program ended');


function h = circle(x,y,r)
    th = 0:pi/50:2*pi;
    xunit = r * cos(th) + x;
    yunit = r * sin(th) + y;
    h = plot(xunit, yunit, 'Color', 'r');
end