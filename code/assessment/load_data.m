filename = '~/Downloads/EEG Eye State.arff'
data = importdata(filename);
d = data.data(5000:end-5000,8);
%d = data.data(:,1);

a = bandpass(d, [2,4], 128);
plot(a)

fid = fopen("assessment_data.txt","rt");
d = fgetl(fid);
fclose(fid);
d = jsondecode(d);