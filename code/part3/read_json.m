function d = read_json(filename)
    fid = fopen(filename,'rt');
    d = fgetl(fid);
    fclose(fid);
    d = jsondecode(d);
end