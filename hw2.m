clc;clear
x = zeros(4)
tmp = zeros(4)
up = 0; down = 0; left = 0; right = 0;
for j = 1:1000
    for i = 2:15
        up = i-1; down = i+1; left = i-4; right = i+4;
        if mod(i-1,4) == 0
            up = i;   
        end
        if mod(i,4) == 0
            dowm = i;
        end
        if i-4 < 1
            left = i;
        end
        if i+4 > 16
            right = i;
        end
    	tmp(i) = (x(up)+x(down)+x(left)+x(right)-4)/4;
    end
    x = tmp
end