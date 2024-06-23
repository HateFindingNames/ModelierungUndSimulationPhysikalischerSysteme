function [res1 res2] = auslenkungen(t,ph10,ph20,D,DD,b,J)
    wa = sqrt(D/J);
    wb = sqrt((D+DD)/J);
    % del = 0.5*b/J;

    c = ph10-ph20;
    switch c
        case 0
            res1 = ph10*cos(wa.*t);
            res2 = res1;
        case 2*ph10
            res1 = ph10*cos(wb.*t);
            res2 = -ph10*cos(wb.*t);
        otherwise
            res1 = ph10*(cos(0.5*(wb-wa).*t).*cos(0.5*(wb+wa).*t));
            res2 = ph10*sin(0.5*(wb-wa).*t).*sin(0.5*(wb+wa).*t);
            % res1 = 0.5*((ph10+ph20)*cos(wa.*t)+(ph10-ph20)*cos(wa.*t));
            % res2 = 0.5*((ph10+ph20)*cos(wa.*t)-(ph10-ph20)*cos(wa.*t));
    end
end