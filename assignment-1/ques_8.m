
R = randi([1, 20]);  % Generate R in the range of 1 to 20
N = 10 + R;  % Number of elements


randomArray = randi([1, 100], 1, N);

% Call the custom function 
resultMatrix = findUniqueAndRepetitions(randomArray);

% Plotting
figure;
hold on;

% Extract data from the resultMatrix
numbers = resultMatrix(:, 1);
repetitions = resultMatrix(:, 2);

% Plot even numbers with red diamonds
evenIdx = mod(numbers, 2) == 0;
plot(numbers(evenIdx), repetitions(evenIdx), 'rd', 'MarkerFaceColor', 'r');

% Plot odd numbers with green circles
oddIdx = mod(numbers, 2) == 1;
plot(numbers(oddIdx), repetitions(oddIdx), 'go', 'MarkerFaceColor', 'g');

% Draw a horizontal dotted line indicating the average repetitions
avgRepetitions = mean(repetitions);
yline(avgRepetitions, 'k--');

% Labeling
xlabel('Number');
ylabel('Number of Repetitions');
title('Number vs. Number of Repetitions');
grid on;
hold off;
