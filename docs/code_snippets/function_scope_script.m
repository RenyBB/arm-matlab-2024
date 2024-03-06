% set x outside of the function
x = 3;
disp(['Outside the function x is ', num2str(x)])

% run the function
function_scope;

disp(['Outside the function the value of x is still ', num2str(x)])

y = 10;
disp(['Let us set y to ' num2str(y) ' outside the function'])
function_scope2
