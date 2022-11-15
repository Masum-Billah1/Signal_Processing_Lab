function [y] = differenceequation(x_coff,y_coff,input)
y = zeros(1,length(input));
for i=1:length(input)
    for j=1:length(x_coff)
        if(i>=j)
            y(i) = y(i) + x_coff(j)*input(i-j+1);
        end
    end
    for j=2:length(y_coff)
        if(i>=j)
            y(i) = y(i) - y_coff(j)*input(i-j+1);
        end
    end
end