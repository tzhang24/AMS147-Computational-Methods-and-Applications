function [zc,zn,ec,en,x,f] = test_zero()a=-0.99; b=-0.9;x0=-0.99;tol=10^-15;Nmax=20000;fun = @(x) 16*x.^5 - 20*x.^3 + 5*x;dfun = @(x) 80*x.^4 - 60*x.^2 + 5;z0=cos(9*pi/10);[zc,citer,cres,chis]=chord_method(fun,a,b,tol,Nmax)ec = abs(chis(1:citer)-z0)[zn,niter,nres,nhis]=Newton_method(fun,dfun,x0,tol,Nmax)en = abs(nhis(1:niter)-z0)%1. The graph of the function (1) in figure(1).figure(1)%row vector of 1000 fplot(fun, [-1,1])%2. The plots of the convergence historiesfigure(2)semilogy(abs(chis(1:citer)-z0),citer-1,'b');holdsemilogy(abs(nhis(1:niter)-z0),niter-1,'r');%3. The plots of ek+1 = |x(k+1) −z0| (y-axis) versus ek = |x(k) −z0| (x-axis) %in a log-log scalefigure(3)loglog(abs(chis(2:citer)-z0), abs(chis(1:citer-1)-z0),'b');holdloglog(abs(nhis(2:niter)-z0), abs(nhis(1:niter-1)-z0),'r');