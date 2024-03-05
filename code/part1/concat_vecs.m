% some vectors -- copied from the handout
one_vector = [11, 12, 13, 14]
another_vector = [21, 22, 23, 24]

% to get help on vertcat and horzcat, check the solution above for ttest

% concatenate the vectors vertically
vertcat(one_vector, another_vector)

% or another way
[one_vector; another_vector]

% concatenate the vectors horizontally
horzcat(one_vector, another_vector)

% or another way
[one_vector, another_vector]
