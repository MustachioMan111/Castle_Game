clc
true = 0;

while true==0
    clc
fprintf('You enter the hallway to the left')
fprintf('\nThere appears to be a room straight down the hall')
fprintf('\nChoices: Back, Inventory, Inspect, Straight');
imshow('Room_Left.jpg','InitialMagnification','fit')
choice_1 = strtrim(lower(input('\n\nWhat do you choose?\n','s')));
if strfind(choice_1,'straight')
input('You proceed straight...')
run('Left_Room_Final')
true = 1;
elseif strfind(choice_1,'inspect')
    fprintf('Upon the walls of the room, large scratches mark the walls\n')
    input('More appear as you go further down the hall...','s')
    true=0;
    clc
elseif strfind(choice_1,'inventory')
    run('Inventory')
    clc
    true=0;
elseif strfind(choice_1,'back')
    input('You go back...')
    true=1;
    clc
    run('After_fight_room')
end
end