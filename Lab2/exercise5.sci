n = -2:2;
xn = [0,1,3,-2,0];
x_n = [0,-2,3,1,0];
subplot(2,2,1);
plot2d3(n,xn);
title("x(n)")
xlabel n  fontsize 4;
ylabel $X_n$  fontsize 4;
subplot(2,2,2);
x_odd = 1/2*(xn+x_n);
plot2d3(n,x_odd);
title("x(odd)");
xlabel n  fontsize 4;
ylabel $X_{odd}$  fontsize 4;
subplot(2,2,3);
x_even = 1/2*(xn-x_n);
plot2d3(n,x_even);
title("x(even)");
xlabel n  fontsize 4;
ylabel $X_{even}$  fontsize 4;
