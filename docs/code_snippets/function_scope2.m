function function_scope2

    disp('Checking whether y exists inside the function...')

    try
        disp(['y exists and is equal to ' num2str(y)])
    catch
        disp('y does not exist')
    end

end
