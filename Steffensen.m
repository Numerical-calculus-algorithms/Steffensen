% Steffensen's method for root-finding
function[x, nit, res]=Steffensen(f, x0, tol, maxIter)

nit = 0;
res = [];
for nit = 1:maxIter

    fx = f(x0); % Function evaluation
    res(end + 1, 1) = abs(fx);    
    x = x0 - ((fx^2)/(f(x0 + fx) - fx)); % Iteration formula

    err = abs(x-x0)/abs(x); % Relative error calculation


    if err < tol
        return
    end

    fprintf('%i \t%1.10f \t  %.2e \t  %.2e\n', nit, x, err, res(end))
    x0 = x;
end