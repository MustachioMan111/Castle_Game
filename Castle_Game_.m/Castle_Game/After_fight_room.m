choice_1 = 0;
true=0;

while true==0
    clc
    imshow('After_fight_room1.jpg','InitialMagnification','fit')
    fprintf('After going forward, you encounter a two way hallway.\n')
    fprintf('One to the left and the right\n')
    fprintf('Choices: Inventory, Left, Right, Back, Inspect')
    choice_1 = strtrim(lower(input('\n\nWhat do you choose?\n','s')));
    imshow('After_fight_room2.jpg','InitialMagnification','fit')
if strfind(choice_1,'left')
    clc
    input('You proceed left...','s');
    true=1;
    run('Left_Room')
    break
elseif strfind(choice_1,'right')
    clc
    input('You proceed right...','s');
    run('right_three_way')
    true=1;
elseif strfind(choice_1,'back')
    clc
    input('You go back...','s')
    run('Decision_1')
    true=1;
    
elseif strfind(choice_1,'inspect')
    if body ==1
    fprintf('\nThis is the room you entered where you fought your first monster\n')
    input('There is nothing else in this room\n','s')
    clc
    elseif first ==0
    input('There was also a room to the right before this one...did you check it?')
    clc
    end
    if body ==0
    clc
    fprintf('This is the room you entered where you fought your first monster\n')
    fprintf('You see the body of the monster, it looks like it''s carrying something\n')
    input('.....\n......\n......\n','s')
    input('You found 1 bomb!\n','s')
    true=0;
    body = 1;
    Bomb = Bomb+1;
    clc
    else
    end
elseif strfind(choice_1,'inventory')
    run('Inventory')
    clc
else
    input('Choose a valid command','s')
    clc
end
end