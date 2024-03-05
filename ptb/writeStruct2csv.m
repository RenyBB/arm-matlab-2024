% writeStruct2csv
% Function write a struct to a csv file with column headings
%
% Usage:
% writeStruct2csv(filename, variable)
%
% Inputs:
% filename : the file name of the csv file to write
% variable : the struct to be written to file
%
% Outputs:
% None
%
% Example usage:
%
% writeStruct2csv('my_data.csv', trialTable)

function writeStruct2csv(filename, variable)

  header = fieldnames(variable)';
  data = squeeze(horzcat(struct2cell(variable)))';


  for c = 1 : size(data, 1)
    for r = 1 : size(data, 2)
      data{c,r} = as_num(data{c,r});
    end
  end


  to_write = [header; data];




  fid = fopen(filename,'w');
  for i = 1:size(to_write,1)
    line = to_write(i,:);
    line = cell2line(line);
    fprintf(fid, '%s\n', line);

  end

end

function numstr = as_num(numstr)
  if isnumeric(numstr)
    numstr = num2str(numstr);
  end
end

function output = cell2line(line)

  output = '';
  for i = line(1:end-1)
    output = [output, i{1},','];
  end
  value = line{end};
  output = [output, value];
end
