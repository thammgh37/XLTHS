function[yn, yorigin] = fold(xn,xorigin)
    for i = 1: size(xn,"c")
        yn(1,i) = xn(1,size(xn,"c")+1-i);
    end
    yorigin = size(xn,"c")- xorigin+1;
    
    n = [-(xorigin-1):size(xn,"c")-xorigin];
    plot2d3(n,xn,3);
    n = [-(yorigin-1):size(yn,"c")-yorigin];
    plot2d3(n,yn,2);
endfunction
xn = [1,-2,3,6,2];
xorigin = 2;
[yn,yorigin] = fold(xn,xorigin);
