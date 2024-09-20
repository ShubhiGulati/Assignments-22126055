
p2 = polyfit(x, y, 2);  % Quadratic fit
y_fit2 = polyval(p2, x);

% Fit a 3rd-degree polynomial (cubic curve) to the data
p3 = polyfit(x, y, 3);  % Cubic fit
y_fit3 = polyval(p3, x);

% Plot 
figure;
plot(x, y, 'o', 'MarkerSize', 5, 'MarkerFaceColor', 'b');
hold on;
plot(x, y_fit2, 'g-', 'LineWidth', 2);  % Plot quadratic fit
plot(x, y_fit3, 'm-', 'LineWidth', 2);  % Plot cubic fit
hold off;

% Add title and labels
title('Polynomial Fits to the Data');
xlabel('X-axis');
ylabel('Y-axis');
legend('Data Points', 'Quadratic Fit', 'Cubic Fit');

grid on;
