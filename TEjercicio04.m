xl=0;
xu=5;
i=1;
e(i)=10;

while(e(i)>0.0001)
    xr=(xl+xu)/2;

g_xl=(xl-(2^-xl));
g_xr=(xr-(2^-xr));
g_xu=(xu-(2^-xu));

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