% there are two methods for concatenating varibles
% we can use [] just as we do when we construct matrices etc

string1 = 'the first string'
string2 = 'the second string'

joined_string = [string1 string2]

array1 = [1 2 3]
array2 = [4 5 6]

horizontally_joined = [array1 array2]
vertically_joined = [array1; array2]

% or we can use the functions horzcat / vertcat

joined_stringv2 = horzcat(string1, string2)

horizontally_joinedv2 = horzcat(array1 array2)
vertically_joinedv2 = vertcat(array1, array2)

% we can also use vertcat with structure arrays
structarray(1).value = 190
structarray(2).value = 144 
array_of_values = vertcat(structarray.value)
