% generate the random matrix from 1-100 of 3*3 size
matrix = randi(100, 3, 3);

% display the matrix
 disp('The resulting matrix is:');
disp(matrix);

%find the determinant
determinant = det(matrix);

% display the determinant
disp('The determinant of the matrix is:');
disp(determinant);