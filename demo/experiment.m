[devices, names] = GetKeyboardIndices; 
ScreenNumbers = Screen('Screens');

% now create two new variables that will take the values you want 
% from the variables the first two lines created
% we'll use `min` which takes the lowest number from a vector

SCREEN_TO_USE = min(ScreenNumbers); % use the primary display
DEVICE_TO_USE = min(devices); % use the primary keyboard

subjectID = input('Enter a subject id: ', 's');

filename = [subjectID, '.json'];

if exist(filename,'file') == 2 % function outputs 2 if a file exists
  error('file exists'); % throw an error!
end

[trialTable] = MakeTrials;


[w, rect] = PsychImaging('OpenWindow', SCREEN_TO_USE, [257 0 0], [0 0 800 600]);

Screen('TextSize',w,24); 
DrawFormattedText(w,['Push d if you see the word DOG'...
    ' and push c if you see the word CAT'],'center','center',[],60)

Screen('Flip',w)

KbWait(DEVICE_TO_USE); % wait for a key press

Screen('Flip',w); % clear the screen


KbQueueCreate(DEVICE_TO_USE)
KbQueueStart(DEVICE_TO_USE)

for t = 1 : length(trialTable)
    
 % all the rest of the code goes in here

    
  DrawFixationCross(w,rect) % draw a fixation cross
  thisStimulus = trialTable(t).Stimulus;
  Screen('Flip',w) % show it 
  
  WaitSecs(.5);
  DrawFormattedText(w,thisStimulus,'center','center',[],60) % draw the stimulus
  KbQueueFlush(DEVICE_TO_USE) % flush the kb queue
  stimulusOnset = Screen('Flip',w); % show the stimulus 
% and record the time it was shown
 
  [pressTime,keyCode] = CollectResponses(DEVICE_To_USE);
 
  RT = pressTime - stimulusOnsent; 
  trialTable(t).Response = keyCode;
  trialTable(t).RT = RT;
  
  WaitSecs(.5)
    
end

KbQueueStop(DEVICE_TO_USE); 
KbQueueRelease(DEVICE_TO_USE);

writeJSON(filename, trialTable);

