function writeJSON(filename, variable)
  encoded_variable = jsonencode(variable);
  fid = fopen(filename, 'w');
  fprintf(fid, encoded_variable);
  fclose(fid);
end