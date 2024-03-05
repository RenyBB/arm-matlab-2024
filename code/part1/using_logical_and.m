% create a row vector -- copied from handout
a_row_vector = [1, 2, 3, 5, 6, 23, 546, 435]

% values greater than 20 AND less than 100?
a_row_vector > 20 & a_row_vector < 100

% what are those values?
a_row_vector(a_row_vector > 20 & a_row_vector < 100)
