% run the function FunctionA using each element of
% the array named TheArray as an input
arrayfun(@(x) FunctionA(x),TheArray) 

% run the function FunctionA using each element of
% the array named TheArray as an input
cellfun(@(x) FunctionA(x),TheCells) 

