if birthyear < 2002
    disp('You are old enough to buy beer')
elseif birthyear == 2002 
    disp('You might be old enough to buy beer')
else 
    disp('You are not old enough to buy beer!')
end

n = 10 % set n to a number

switch n 
    case 1
        disp('one')
    case 2
        disp('two')
    otherwise 
        disp('I can only count to two')
end

n = 'one'

switch n
  case 'one'
    disp('1')
  case 'two'
    disp('2')
  otherwise
    disp('I can only count to two')
end
