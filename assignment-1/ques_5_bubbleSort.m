
array=[64, 34, 25, 12, 22, 11, 90];

n = length(array);

    fprintf('Original array:\n');
    disp(array);

    for i = 1:n-1
        % intizialize swapped with false initially
        swapped = false;
        
        for j = 1:n-i
            if array(j) > array(j+1)
                % Swap the elements
                temp = array(j);
                array(j) = array(j+1);
                array(j+1) = temp;
                
                % if swapping happened set it to true
                swapped = true;
            end
        end
        
        % If no swapping happened in the inner loop, the array is sorted
        if ~swapped
            break;
        end
    end
    
    sortedArray = array;
    
     fprintf('Sorted array:\n');
    disp(sortedArray);