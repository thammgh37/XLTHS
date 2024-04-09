function[yn, yorigin] = delay(xn,xorigin,k)
    if (k <= xorigin) then
        yorigin = xorigin - k;
        yn = xn;
    else
        yorigin = 1;
        for i = 1 : (k-xorigin)
            yn(1,i) = 0;
        end
        for i = 1 : size(xn,"c")
            yn(1,k-xorigin +i) = xn(1,i);
        end
    end
    n = [-(xorigin-1):size(xn,"c")-xorigin];
    plot2d3(n,xn,3);
    n = [-(yorigin-1):size(yn,"c")-yorigin];
    plot2d3(n,yn,2);
endfunction
xn = [1,-2,3,6];
xorigin = 3;
k = 4;
[yn,yorigin] = delay(xn,xorigin,k);


