
R = 55;  

% Generate random x data points
num_points = 100;
x = linspace(0, 10, num_points);

% Generate y data points with noise, aiming for a slope close to R
noise = randn(1, num_points);  
y = R * x + noise;

% Plot the generated data points
figure;
plot(x, y, 'o', 'MarkerSize', 5, 'MarkerFaceColor', 'b');
hold on;

% Fit a linear model to the data
p = polyfit(x, y, 1);  % Linear fit (1st degree polynomial)
y_fit = polyval(p, x);

plot(x, y_fit, 'r-', 'LineWidth', 2);
hold off;

title('Linear Fit with Slope Close to R');
xlabel('X-axis');
ylabel('Y-axis');

% Display the slope of the fitted line
disp(['The slope of the fitted line is: ', num2str(p(1))]);

grid on;