function [is_sig] = my_ttest(xvar, yvar)

  % first let's work out the differences between the two variables
  diffs = xvar - yvar;

  % now let's run a t-test on the differences (i.e., a one-sample t-test)
  [H,P] = ttest(diffs);
  if P < 0.05 
      disp('There is a significant difference between x and y')
      is_sig = 1;
  else
      disp('There is NOT a significant difference between x and y')
      is_sig = 0;
  end


end
