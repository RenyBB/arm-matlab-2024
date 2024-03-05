% first we'll create some data and then we'll save it

dummy_data = struct;
dummy_data.matrix = randn(10, 10);
dummy_data.cells = {'A cell', 'Another cell'};
some_more_data = randi(10,10);

save my_data; % save entire workspace into a file called my_data.mat
