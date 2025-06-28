function ClickFcn(h,~)

    global fig1;

    global mouse_pt1 mouse_pt2 MOUSE_OK;
    global key;

    % set(fig1, 'WindowButtonMotionFcn', @ClickFcn);
    clicked = get(fig1.CurrentAxes, 'CurrentPoint');
    mouse_pt1 = [clicked(1,1), clicked(1,2)];
    mouse_pt2 = mouse_pt1;
    key = 1;
    MOUSE_OK = true;
end