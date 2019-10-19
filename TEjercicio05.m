int_value=0;
i=1;
e(i)=10;

while(e(i)>0.0001)
    if(i==1)
        x(i)=int_value;
    end
    g(i)=(1/(x(i)^2-1));
    i=i+1;
    x(i)=g(i-1);
    e(i)=abs(x(i-1)-x(i));
    if(e(i)>50)
    break;
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