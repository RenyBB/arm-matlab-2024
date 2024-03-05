% define a matrix for our logical operations
a_matrix = [11 12 13; 21 22 23]
a_vector = [1, 2, 3, 4, 5]

5 == 5 % 'is equal to' : returns logical 1
4 == 5 % 'is equal to' : returns logical 0

4 ~= 5 % 'is NOT equal to' : returns logical 1
4 ~= 4 % 'is NOT equal to' : returns logical 0


4 < 5 % 'is less than' : returns logical 1

5 <= 5 % 'is less than or equal' : returns logical 1

4 > 5 % 'is greater than' : returns logical 0
5 >= 5 % 'is less than or equal' : returns logical 1

a_vector > 3 % returns 1 x 5 logical vector [0 0 0 1 1]

a_matrix > 20 % returns a 2 x 3 logical vector
 
