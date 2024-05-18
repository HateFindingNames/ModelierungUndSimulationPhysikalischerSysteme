clear all;
clc;

% finding solutions of x^3 + 2*x^2 - x - 2 = 0 symbolically and numerically
% A1a;
% A1b;

% A2a;
% A2b % no discontinuities visible :shrug:

% A3ab

% A4a;
% A4b;

A5a;
% A5b;

% A6a;
% A6b;
% A6ab; % easy comparison

% A7a;
% A7b;

function result = A1a
    disp('symbolic')
    syms x y
    y = x^3 + 2*x^2 - x - 2 == 0;
    y0 = solve(y);
    disp(y0)
    result = y0;
end

function result = A1b
    disp('numeric')
    f = [1, 2, -1 -2];
    result = roots(f)
end

function result = A2a
    syms x
    y = sin(5*x-2);
    xs = [0, 10]
    ezplot(y, xs)
    hold on
    ezplot(diff(y,1), xs)
    hold on
    ezplot(diff(y,2), xs)
    grid on
end

function result = A2b
    xs = linspace(0,10,1000);

    ys = y(xs);
    dys = diff(ys)./diff(xs);
    ddys = diff(dys)./diff(xs(2:end));
 
    plot(xs(1:end), ys);
    hold on
    plot(xs(2:end), dys);
    hold on
    plot(xs(3:end), ddys);
    grid on
    legend('y', 'dy', 'ddy')

    function result = y(x)
        result = sin(5*x-2);
    end
end

function result = A3ab
    syms x;
    f = sin(5*x-2);
    % a)
    PRf = taylor(f, x, 2, 'Order', 3)

    % b)
    xint = [1.5 2.5];
    ezplot(PRf, xint)
    hold on
    ezplot(f, xint)
    title('A3ab')
    legend('PRf', 'f')
end

function result = A4a
    disp('y(x)')
    syms y(x) x;
    dydx = diff(y,x) == x*y^2;
    result = dsolve(dydx) % get y(x)
    test = diff(result,x) - x*power(result,2) % get y'(x) by differentiating above solution
end

function result = A4b
    disp('y(t)')
    syms t x y(t);
    dydt = diff(y,t) == x*y^2;
    result = dsolve(dydt) % get y(t)
    test = diff(result,t) - x*power(result,2) % get y'(t) by differentiating above solution
end

function result = A5a
    a = 2.2;
    b = 1.0015;
    tspan = [0, 3];
    P0 = 1000;
    Pdot = @(t,P)(a*P^b);

    [t, P] = ode45(Pdot, tspan, P0);
    plot(t,P)
    grid on
end

function result = A5b
    syms a P(t) t;
    p0 = P(0) == 1000;
    dP = diff(P,t) == a * P;
    result = dsolve(dP, p0) % get P(t)
end

function result = A6a(standalone)
    arguments
        standalone = true;
    end
    syms y(t) t a b

    % equations
    dy = diff(y, t);
    ddy = diff(y, t, 2);

    % conditioning
    y0 = y(0) == 2;
    dy0 = dy(0) == 1;

    % i) a=0, b=2
    disp('i) a=0, b=2')
    eqn = ddy == -0*dy -2*y;
    soli = dsolve(eqn, [y0, dy0])
    % chr = latex(soli)

    % ii) a=1, b=2
    disp('ii) a=1, b=2')
    eqn = ddy == -1*dy -2*y;
    solii = dsolve(eqn, [y0, dy0])
    % chr = latex(solii)

    % iii) a=3, b=1
    disp('iii) a=3, b=1')
    eqn = ddy == -3*dy -1*y;
    soliii = dsolve(eqn, [y0, dy0])
    % chr = latex(soliii)

    ezplot(soli, [0, 10])
    hold on
    ezplot(solii, [0, 10])
    hold on
    ezplot(soliii, [0, 10])
    hold on

    if standalone == true
        grid on
        ylim([-2.5,2.5])
        title('Le Symbolic Oscillation')
        legend('i) Undamped', 'ii) Just-right damped', 'iii) Overdamped')
        hold off
    end

end

function result = A6b(standalone)
    arguments
        standalone = true;
    end
    tspan = [0, 10];
    y0 = [1, 2];

    % i) a=0, b=2
    a = 0;
    b = 2;
    osc = @(t,y)[y(2); -a*y(2)-b*y(1)];
    [t, y] = ode45(osc, tspan, y0);
    scatter(t, y(:,1))
    hold on

    % % ii) a=1, b=2
    a = 1;
    b = 2;
    osc = @(t,y)[y(2); -a*y(2)-b*y(1)];
    [t, y] = ode45(osc, tspan, y0);
    scatter(t,y(:,1),'x')
    hold on

    % iii) a=3, b=1
    a = 3;
    b = 1;
    osc = @(t,y)[y(2); -a*y(2)-b*y(1)];
    [t, y] = ode45(osc, tspan, y0);
    scatter(t,y(:,1),'+')

    if standalone == true
        grid on
        ylim([-2.5,2.5])
        title('Le Numeric Oscillation')
        legend('i) Undamped', 'ii) Just-right damped', 'iii) Overdamped')
        hold off
    end
end

function A6ab
    A6a;
    hold on
    A6b;
    grid on
    ylim([-2.5,2.5])
    title('Le Combined Oscillation')
    legend('a-i)', 'a-ii)', 'a-iii)', 'b-i)', 'b-ii)', 'b-iii)')
    hold off
end

function res = A7a
    syms x
    g = 4/((x-1)^2+4);

    % solution: 2*atan(x/2 - 1/2)
    indefG = int(g,x)
    % solution: 2*[atan(2)-atan(-2)] = 4*atan(2) = const!
    G = int(g, x, -3, 5)

    ezplot(g,[-3 5])

    title('Aufgabe 7a')
    legend(string(g))
    grid on
    hold off
    res = 0;
end

function res = A7b
    syms x
    g = 4/((x-1)^2+4);
    ddg = diff(g,x,2) == 0;

    xi = solve(ddg);
    yi = [compose(g,xi(1));compose(g,xi(2))]; % compose: plugs x-values into symbolic function g

    W_1 = [xi(1); yi(1)]
    W_2  = [xi(2); yi(2)]

    ezplot(g,[-3 5])
    hold on
    scatter(xi, yi, 'r')
    % W_2 = solve(ddg,x,0)
end