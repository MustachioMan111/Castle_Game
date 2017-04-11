clc;
cnt = 0;
first = 0;
imshow('Left_Room.jpg','InitialMagnification','fit')
 while cnt ==0
        clc
    fprintf('You enter the left room. There is a door to the right\n');
    fprintf('Choices: Inspect, Inventory, Right, Chest, Back')
    open = strtrim(lower(input('\n\nWhat do you do?\n','s')));
    if strfind(open,'chest')
        if Chest==0
        input('You open the chest and find 2 potions.\n','s');
        Potion = Potion+2;
        cnt = 0;
        Chest=1;
        else
        input('The chest is empty.\n','s');
        end
    elseif strfind(open,'right')
        input('You leave the room...\n');
        cnt = 1;
        run('Room_Final')
        break
    elseif strfind(open,'inventory')
        run('Inventory')
        clc
        cnt = 0;
    elseif strfind(open,'inspect')
        fprintf('\nThere is a chest in the room, and\n')
        input('There is a door to the left.','s');
        choice=0;
        clc
    elseif strfind(open,'back')
        cnt=1;
        input('\nYou go back...\n','s')
        run('right_three_way')
    else
        fprintf('You must make a decision while you''re in this room\n');
        input('Press continue to make your choice again','s');
        cnt = 0;
        clc
    end
end