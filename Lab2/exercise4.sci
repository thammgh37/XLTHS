n = -5:5;
y = zeros(1,11);
disp(y);
for i = 1:11
    if i <=6 then
        y(i) = 0;
    else 
        y(i) = i - 6;
    end
end
plot2d3(n,y)
