n = -1:3;
x1n = [0,0,1,3,-2];
x2n = [0,1,2,3,0];
subplot(1,3,1);
plot2d3(n,x1n);
h = gca();
h.data_bounds = [-3,-6;3,6];
title("$X_1$");
xlabel n  fontsize 4;
ylabel $X_1$  fontsize 4;
subplot(1,3,2);
h = gca();
h.data_bounds = [-3,-6;3,6];
plot2d3(n,x2n);
title("$X_2$");
xlabel n  fontsize 4;
ylabel $X_2$  fontsize 4;
subplot(1,3,3);
h = gca();
h.data_bounds = [-3,-6;3,6];
y_n = x1n+x2n;
plot2d3(n,y_n);
title("$Y_n$");
xlabel n  fontsize 4;
ylabel $Y_n$  fontsize 4;
