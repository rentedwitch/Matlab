% Parameters
x = linspace(-10, 10, 1000);  % Generating 1000 points between -10 and 10

% Pre-allocate sinc values
y = zeros(size(x));

% Loop to calculate sinc values manually
for i = 1:length(x)
    if x(i) == 0
        y(i) = 1;  % Define sinc(0) as 1
    else
        y(i) = sin(pi * x(i)) / (pi * x(i));  % sinc(x) for non-zero x
    end
end

% Plotting the sinc function
plot(x, y);
xlabel('x');
ylabel('sinc(x)');
title('Sinc Function (Generated Manually)');
grid on;