function [xopt,fopt,niter,gnorm,dx] = gradient_descent()

%MANEJO DE ENTRADAS DE USUARIO
x0 = [3 3]';

%DEFINO LA TOLERANCIA
tol = 1e-6;
dxmin = 1e-6;

%DEFINO LA CANTIDAD DE ITERACIONES PERMITIDAS
maxiter = 10;

%DEFINIR EL PASO INICIAL
alpha = 0.2;

%DEFINIR LA FUNCION OBJETIVO
f = @(x1,x2) x1.^2 + x1.*x2 + 3*x2.^2;

%DIBUJO LA FUNCION
figure(1)
ezcontour(f,[-5 5 -5 5]);
axis equal;
hold on;

%INICIAR EL PROCESO DE OPTIMIZACION
gnorm = inf;
x = x0;
niter = 0;
dx = inf;
while and(gnorm>=tol, and(niter <= maxiter, dx >= dxmin))
   % Calcular el gradient
   g = grad(x)
   gnorm = norm(g)
   % Paso de armijo
   while (condicion de armijo no se cumple)
    
    n = n+1
    alpha = beta.^n
   end
   %Tomo el nuevo paso
   xnew = x - alpha*g;
   plot([x(1) xnew(1)],[x(2) xnew(2)],'ko-')
   refresh
   niter = niter + 1
   x = xnew;
end
xopt = x;

function g = grad(x)
g = [2*x(1)+x(2);x(1) + 6*x(2)]








































































