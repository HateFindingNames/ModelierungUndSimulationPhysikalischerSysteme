clear all;
clf;

% A3a
A3b

function res = A3a
    % Arrays from A2
    t = (0: 0.5: 10);
    F2 = (t-2).^2;
    
    dF2 = diff(F2); % forward difference method only
    figure(3)
    plot(t, dF2)
end

function res = A3b
    %% ======== Base arrays creation ===================
    t_min = 0;
    t_max = 6;
    dt = 0.1;
    t = t_min:dt:t_max;
    y = (t-2).^2;
    
    %% ======== Own implementation of gradient() ======
    % gradient() uses forward differences method for the first element,
    % backward differences method for the last element and
    % midpoint differences for all other elements.
    ogy = zeros(1,length(y));
    
    ogy(1) = (y(2)-y(1))/(t(2)-t(1)); % Forward diffs
    ogy(end) = (y(end)-y(end-1))/(t(end)-t(end-1)); % Backward diffs
    
    % Midpoint diffs:
    % iterate over all elements of 'ogy' but the very first and the very last
    for i = 2:length(ogy)-1
        ogy(i) = (y(i+1)-y(i-1))/(t(i+1)-t(i-1));
    end
    %% ======== Using gradient() ======================
    gy = gradient(y,t);
    
    %% ======== Using diff() ==========================
    diffy = diff(y);
    
    %% ======== Analytical ============================
    ay = 2*(t-2);
    
    %% ================================================
    plot(t,y,'black')

    hold on
    scatter(t,ogy,'+')

    hold on
    scatter(t,gy,'o','blue')

    hold on
    plot(t,ay)

    hold on
    scatter(t(1:end-1),diffy,'^')

    legend('y', 'ogy','gradient(y)','ay','diff(y)')
    set(gcf,'Position',[0 0 1280 720]);
end