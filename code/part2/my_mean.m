% work out the mean of some numbers
function mean_value = my_mean(input_numbers)

  % we'll use length to get the number of items
  length_of_input = length(input_numbers)

  % now we'll use sum to add up all the items
  sum_of_input = sum(input_numbers)

  % now work out the mean!
  mean_value = sum_of_input / length_of_input

end
