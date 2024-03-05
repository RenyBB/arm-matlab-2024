% functions stored in file mean_ci.m
function [mean, ub, lb] = mean_ci(input_numbers)
  mean = sum(input_numbers) / length(input_numbers)
  ci = 1.96 * se(input_numbers)
  ub = mean + ci
  lb = mean - ci
end
function [sem] = se(input_numbers)
  sd = std(input_numbers)
  sem = sd / sqrt(length(input_numbers))
end