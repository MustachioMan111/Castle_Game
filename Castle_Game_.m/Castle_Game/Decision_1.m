clc;
fprintf('After going up the stairs, you encounter your first hallway.\n');
imshow('Hallway1.jpg','InitialMagnification','fit')
choice = strtrim(lower(input('Will you proceed straight, or go to the room on the right?\n','s')));
cnt = 0;
first = 0;
while first == 0
if strfind(choice,'right')
    first = 1;
    clc
    input('You walk into the room...\n...','s');
    imshow('Chestroom.jpg','InitialMagnification','fit');
    
    while cnt ==0
    fprintf('There is a chest in the room\n');
    open = strtrim(lower(input('Do you open the chest?\n','s')));
    if strfind(open,'ye')
        if Potion==0
        imshow('Chest1.jpg','InitialMagnification','fit')
        fprintf('\n\n\nYou open the chest and find 2 potions.\n');
        input('You put them in your pocket and leave the room.\n');
        Potion = 2;
        cnt = 1;
        else
            input('The chest is empty','s');
            cnt=1;
        end
    elseif strfind(open,'no')
        input('You leave the room...\n');
        run('Decision_1')
        cnt=1;
        break

    else
        fprintf('You must make a decision while you''re in this room\n');
        input('Press continue to make your choice again','s');
        cnt = 0;
        clc
    end
    end
    
    clc
imshow('Hallway1.jpg','InitialMagnification','fit');
input('You continue forward\n');
if experience==0
    run('Monster1');
else
    run('After_fight_room');
end
elseif strfind(choice,'straight')
    if experience ==0
    input('\nYou proceed straight...\n','s');
    run('Monster1');
    first = 1;
    else
    input('\nYou proceed straight...\n','s'); 
    run('After_fight_room')
    end
    
else
    fprintf('You must make a decision\n');
    input('Press continue to make your choice again');
    clc;
    run('Decision_1');
end
end
