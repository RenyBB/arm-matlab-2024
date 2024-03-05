% define two chars for our logical operations 
% remember, chars using single quotes

char1 = 'abc'
char2 = 'abz'

% compare the chars character by character
char1 == char2 % returns logical 1 1 0

char1 ~= char2 % returns logical 0 0 1

char1 < char2 % returns logical 0 0 1 because 'c' comes before 'z'

% compare the entire char
strcmp(char1, char2) % returns logical 0

strcmp(char1, char2) % returns logical 1



