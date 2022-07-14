newmatrix = [1 2; 1 2];

disp(sum(newmatrix,"all"));

if sum(newmatrix) > 0
    disp('The sum of the elements of newmatrix are positive!');
elseif sum(newmatrix) < 0
        disp('The sum of the elements of newmatrix are negative!');
else
        disp('The sum of the elements of newmatrix is zero!');
end

