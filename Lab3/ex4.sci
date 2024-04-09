function [yn, yorigin] = add (x1n, x1origin, x2n, x2origin)
    nmaxx1 = size(x1n,"c")-x1origin;
    nminx1 = -(x1origin-1);
    nmaxx2 = size(x2n,"c")-x2origin;
    nminx2 = -(x2origin-1);
    ymin = min(nminx1,nminx2);
    
    ymax = max(nmaxx1,nmaxx2);
    n = max(1,ymin)
    yn = zeros(1,ymax - ymin+1);
    for i = ymin : ymax
        if i + x1origin < 1 | i + x1origin > size(x1n,"c") then
            x1 = 0
        else
            x1 = x1n(i + x1origin)
        end
        
        if i + x2origin < 1 || i + x2origin > size(x2n,"c") then
            x2 = 0
        else
            x2 = x2n(i + x2origin)
        end
        yn(1,i + yorigin) = x1cur +x2cur;
    end
    yorigin = size(yn,"c") - ymax;
    disp(yn)
endfunction
x1 = [1,2,3,4];
x2 = [1,3,5,6];
x1origin = 2;
x2origin = 3;
[yn,yorigin] = add(x1,x1origin,x2,x2origin)
