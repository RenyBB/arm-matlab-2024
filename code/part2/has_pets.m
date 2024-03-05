% this will just create some dummy data for us to work on
% let's create an struct array with some data

% ---- This section is copied from the handount -------------
% ---- All it does is create the struct array ---------------

person.name = 'Lincoln';
person.has_pets = 0;
people = person;
person.name = 'Laura';
person.has_pets = 1;
people = [people person];
person.name = 'Edwin';
person.has_pets = 1;
people = [people person];
person.name = 'Clara';
person.has_pets = 0;
people = [people person];
clear person;

% ------------------------------------------

% solution for Exercise 3.3
for p = 1:length(people)
    if people(p).has_pets == 1
        disp(people(p).name)
    end
end
