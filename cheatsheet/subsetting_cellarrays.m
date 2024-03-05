cell_array = {'element 1', 'element 2', 'element 3', [1, 3; 4, 5]}
cell_array2 = {'element 1', 'element 1', 'element 3'}

% cell 1, 1 of cell_array. Returns a cell array
cell_array(1,1)

% the content of cell 1, 1 of cell_array. Returns content data type
% i.e., returns string, matrix, etc depending on the content of cell
cell_array{1,1}

% returns the elements of cell_array2 that are equal to the string
% 'element 1'. All elements of cell_array2 must be strings
cell_array(ismember(cell_array2,'element 1'))

% returns the content of cells in cell_array2 that are equal to the string
% 'element 1'. All elements of cell_array2 must be strings
cell_array2{ismember(cell_array2,'element 1')}
