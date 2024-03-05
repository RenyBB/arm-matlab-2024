% psychtoolbox provides to helper functions for specifying 
% the colours Black and White

% Define black and white
white = WhiteIndex(screenNumber);
black = BlackIndex(screenNumber);

% the variables white and black can now just be used anywhere you want to 
% specify those colours

% for other colours you need to specify a vector of 3 numbers
% the structure is [redvalue, greenvalue, bluevalue]
% and the values range from 0 to 255
% here are some examples
red = [255, 0, 0]
green = [0, 255, 0]
blue = [0, 0, 255]
midgrey = [127, 127, 127]
