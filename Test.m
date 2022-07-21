%% Primo test metodo di Steffensen
f =@(x) sin(x) - log(x);
x0 = 3;
tol = 1e-10;
maxIter = 100;
fprintf("<strong>Passo\t   Valore x \tStima errore\t   Residuo</strong>\n")
[x, nit, res] = Steffensen_v1(f, x0, tol, maxIter);

%% Secondo test metodo di Steffensen
f =@(x) sin(x) -x^3;
x0 = 1;
tol = 1e-10;
maxIter = 100;
fprintf("<strong>Passo\t   Valore x \tStima errore\t   Residuo</strong>\n")
[x, nit, res] = Steffensen_v1(f, x0, tol, maxIter);