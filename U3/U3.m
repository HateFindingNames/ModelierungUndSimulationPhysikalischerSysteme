clear

% A1;
A2;

function result = A1
    disp('A1')

    tspan = [0 5];
    x0 = 1;
    % defining ODE using function handle
    f = @(t,x)(2*sin(x)^3+1)
    [t, x] = ode23(f, tspan, x0);
    
    figure(1)
    plot(t,x,'-o')
    grid on
    title('A3-1: $\dot{x} = 2sin^3(x)+1$', 'Interpreter', 'latex')
    xlabel('t')
    ylabel('x')

    result = [t, x];
end

function result = A2
    disp('A2')

    D = 196; % Newton per metre
    m = 2; % kg
    w0 = sqrt(D/m);
    disp(sprintf('Resonant frequency: %.3f s^-1', w0))
    
    tspan = [0, 1];
    v0 = 7;
    x0 = 15;

    [t,x] = ode45(@odeA2, tspan, [x0 v0]);

    figure(1)
    yyaxis left
    plot(t,x(:,1))
    ylabel('Elongation')

    yyaxis right
    plot(t,x(:,2))
    ylabel('Velocity');

    title('A3-2: $\ddot{x}+\frac{D}{m}x = 0$', 'Interpreter', 'latex');
    xlabel('Time / t');
    legend('Velocity', 'Elongation');
    grid on

    function dudt = odeA2(t,u)
        % u(2) := velocity
        % u(1) := elongation
        dudt = [u(2); -(D/m)*u(1)];
    end
end