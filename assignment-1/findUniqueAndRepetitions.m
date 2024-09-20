function resultMatrix = findUniqueAndRepetitions(array)
    uniqueNumbers = unique(array);  % Find unique numbers in the array
    counts = histc(array, uniqueNumbers);  % Count the occurrences of each unique number
    
    % Combine unique numbers and their counts into a matrix
    resultMatrix = [uniqueNumbers', counts'];
end