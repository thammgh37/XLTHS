function[yn, yorigin] = advance(xn,xorigin,k)
    if (k <= size(xn,"c")- xorigin) then
        yorigin = xorigin + k;
        yn = xn;
    else
        yn = zeros(1,k+xorigin);
        yorigin = size(yn,"c");
        yn(1:size(xn,"c")) = xn;
        disp(yn);
    end
    n = [-(xorigin-1):size(xn,"c")-xorigin];
    plot2d3(n,xn,3);
    n = [-(yorigin-1):size(yn,"c")-yorigin];
    plot2d3(n,yn,2);
    legend("x","y");
endfunction
xn = [1,-2,3,6];
xorigin = 3;
k = 4;
[yn,yorigin] = advance(xn,xorigin,k);


