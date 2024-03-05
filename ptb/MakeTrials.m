function [trialTable] = MakeTrials

% make a cell array {'DOG', 'CAT'} 
% and then repeat that 5 times

stimuli = repmat({'DOG','CAT'},1,5)

% shuffle the order!
stimuli = Shuffle(stimuli);

% through the stimuli 
for i = 1 : length(stimuli)
    this_stimulus = stimuli{i} 

    if strcmp(this_stimulus, 'CAT')
        % the corect reponse is 'c'
        this_correct = KbName('c')

    elseif strcmp(this_stimulus,'DOG')
        % the correct reponse is 'd'
        this_correct = KbName('d')
    end

    % make an arrary of the correct 
    % responses
    responses(i) = this_correct;

end


% create an empty struct
trialTable = struct;

% loop through and fill the struct
for i = 1 : length(responses)
    trialTable(i).Stimulus = stimuli{i}
    trialTable(i).CorrectReponse = responses(i)
    trialTable(i).Response = [] % will hold the response 
    trialTable(i).RT = [] % will hold the RT
end
