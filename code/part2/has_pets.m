% this will just create some dummy data for us to work on
% let's create an struct array with some data

% ---- This section is copied from the handount -------------
% ---- All it does is create the struct array ---------------

person1.name = 'Lincoln';
person1.has_pets = 0;

person2.name = 'Laura';
person2.has_pets = 1;

person3.name = 'Edwin';
person3.has_pets = 1;

person4.name = 'Clara';
person4.has_pets = 0;

people = [person1, person2, person3, person4];

clear person1 person2 person3 person4
% ------------------------------------------

% solution for Exercise 3.3
for p = 1:length(people)
    if people(p).has_pets == 1
        disp(people(p).name)
    end
end
