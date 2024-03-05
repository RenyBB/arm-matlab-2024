% you can read the help on randn() using
help randn

% we can now use randn to generate a 10 random number
rts = randn(10,1)

% we can now just make a vec to 10 consecutive numbers
trialid = 1:10

% but that's a horizontal vec, so we need to transpose it
trialid = trialid'

% now let's make a matrix called rt by concatenating the two vecs
rt = [trialid rts]

% now we make the struct
data = struct
data.rt = rt
data.id_code = 1234
data.name = 'Lincoln'
