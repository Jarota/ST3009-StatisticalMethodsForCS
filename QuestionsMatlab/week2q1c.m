count = 0;

for i = 1:100000

    threeRolls = randi(6, 3, 1);
    if ismember(2, threeRolls)
        count = count + 1;
    end;

end;

result = count / 100000;
disp(result);
