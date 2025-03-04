%main4

x = 1:0.01:1;
y = x;
plot (y,x, '--'), hold on;
xLength = length (x);
for i = 1:xLength
    if (x(i)>0.5)
        y(i) = 0.5;
    end

    if (x(i)<-0.5)
        y(i) = -0.5;
    end
end
plot (x,y,'r'), axis([-1,1,-1,1]);
title ('transfer function for hard clipping disotortion');
grid on;
hold off;
