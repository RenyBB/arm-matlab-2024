x = [1:4; 5:8; 9:12]

% the first row of the matrix
x(1,:) 

% the second and third column
x(:,2:3)

% row 1 and 2 of column 1
x(1:2,1) 

% column 1 and 2 of row 1
x(1,1:2) 

% the 2nd to the last element of x
x(2:end) 

% every 2nd element of x from the first to the last
x(1:2:end) 

% all the elements of x
x(:) 

% all values of x less than 5
x(x < 5) 

% the index of elements in x that are less than 5
find(x < 5) 
