xl=0;
xu=2.5;
i=1;
e(i)=10;

while(e(i)>0.5)
    xr=(xl+xu)/2;

g_xl=xl^3+4*xl^2-10;
g_xr=xr^3+4*xr^2-10;
g_xu=xu^3+4*xu^2-10;

if(g_xl*g_xr<0)
    xu=xr;
    e(i+1)=abs(xr-xl);
end

if(g_xu*g_xr<0)
    xl=xr;
    e(i+1)=abs(xu-xr);
end

i=i+1;

if(g_xu*g_xr==0)
    xr=xr
end
end

tamanio=size(e);
iter=1:1:tamanio(2);

figure('DefaultAxesFontsize',10)
plot(iter,e,'color','blue')

grid on
xlabel('Iteraciones')
ylabel('ERROR')
legend('ERROR')