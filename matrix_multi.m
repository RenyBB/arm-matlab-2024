% because Matlab is specialised for working with matrices it is easy
% to do things like matrix multiplication straight out of the box
% let's say we want to take an n-dimensional vector and transform it
% into an m-dimensional vector through matrix multiplication then we 
% can do that!
>> n = [1 2 3 4]

n =

     1     2     3     4

>> t = [2 3; 3 4; 6 7; 2 7;]

t =

     2     3
     3     4
     6     7
     2     7

>> n * t

ans =

    34    60

