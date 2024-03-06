
[devices, names] = GetKeyboardIndices;
ScreenNumbers = Screen('Screens');

% now create two new variables that will take the values you want from 
%
% the variables the first two lines created

SCREEN_TO_USE = min(ScreenNumbers); % use the primary display
DEVICE_TO_USE = min(devices); % use the primary keyboard

% Ask for a Subject ID
subjectID = input('Enter a subject id: ', 's')

% Make a file name out of the subject ID with the extension '.csv'
filename = [subjectID, '.csv']

if exist(filename,'file') == 2; % function outputs 2 if a file exists
  error('file exists'); % throw an error!
end


Screen('Preference', 'SkipSyncTests', 1);

[w,rect] = PsychImaging('OpenWindow',SCREEN_TO_USE,[],[0 0 800 600]);



Screen('TextSize',w,24); 
DrawFormattedText(w,['Push d if you see the word DOG',...
    'and push c if you see the word CAT'],'center','center',[],60)

Screen('Flip',w)

KbWait(-1,2); % wait for a key press

Screen('Flip',w); % clear the screen

trialTable = MakeTrials;

KbQueueCreate(DEVICE_TO_USE)
KbQueueStart(DEVICE_TO_USE)

for t = 1 : size(trialTable,2)
    
    thisStimulus = trialTable(t).Stimulus; % select a stimulus
    
    DrawFixationCross(w,rect) % draw a fixation cross
    
    Screen('Flip',w) % show it
    
    WaitSecs(.5) % pause for .5 seconds
    
    % draw the stimulus
    DrawFormattedText(w,thisStimulus,'center','center',[],60) 
    
    KbQueueFlush(DEVICE_TO_USE) % flush the kb queue
    
    stimulusOnsent = Screen('Flip',w) % show the stimulus
    % and record the time it was shown
    
    [pressTime,keyCode] = CollectResponses(DEVICE_TO_USE)

    
    % Take away the stimulus after a response
    Screen('Flip',w);
   
    % Store the responses 
    trialTable(t).Response = keyCode;
    
    trialTable(t).RT = pressTime - stimulusOnsent;
    
    % Wait .5 seconds before the next trial
    
    WaitSecs(.5)
    
    
end

KbQueueStop(DEVICE_TO_USE);
KbQueueRelease(DEVICE_TO_USE);
writeStruct2csv(filename, trialTable)
sca

