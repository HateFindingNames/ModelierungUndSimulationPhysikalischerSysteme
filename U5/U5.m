clear all;
clf;

% A1
% A2a
A2b

function res = A1
    D = input("Enter any number:")
    if isempty(D)
        disp("Eingabefehler")
    end
end

function res = A2a
    syms E0 k x y z
    E(x,y,z) = (E0/z) * exp(-j*k*(x^2+y^2)/(2*z));
    E(x,y,z)
    
    helmi = j*2*k*gradient(E(x,y,z),z)
    
    ddEx = gradient(gradient(E(x,y,z),x),x);
    ddEy = gradient(gradient(E(x,y,z),y),y);
    ddExy = ddEx + ddEy

    tf = isequal(ddExy, helmi)
end

function res = A2b
    % syms E0 k x y z

    % E = matlabFunction(E(x,y,z));

    X = [0:0.1:5];
    Y = X;
    Z = [2:0.1:10];

    [x,y,z] = meshgrid(X,Y,Z);

    E = (z.^-1).*exp(-j*20*(x.^2+y.^2)./(2.*z));

    xslice = 0;
    yslice = xslice;
    zslice = [2, 10];
    
    slice(X,Y,Z,real(E),xslice,yslice,zslice)
    xlabel('x'); ylabel('y'); zlabel('z')
end