function [trialStruct] = MakeTrials


stimuli = {'DOG','CAT'};
stimuli = repmat(stimuli,1, 5);
stimuli = Shuffle(stimuli);

for i  = 1 : length(stimuli)
   
    this_stimulus = stimuli{i};
    
    if strcmp(this_stimulus, 'CAT')
        this_correct = KbName('c');
    elseif strcmp(this_stimulus, 'DOG')
        this_correct = KbName('d');
    end
    
    responses(i) = this_correct;
     
end


trialStruct = struct;

for i  = 1 : length(stimuli)
   
    trialStruct(i).Stimulus = stimuli{i};
    trialStruct(i).CorrectResponse = responses(i);
    trialStruct(i).Response = [];
    trialStruct(i).RT = [];    
    
end