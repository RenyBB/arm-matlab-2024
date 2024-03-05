fs = fields(D);

d = [];

for i = 2: 16
    my_col = vertcat(D.(fs{i}));
    
    d = horzcat(d, my_col);
    
end