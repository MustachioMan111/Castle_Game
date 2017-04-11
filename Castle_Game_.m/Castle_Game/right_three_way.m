clc
true = 0;
key = 0;
while true==0
    clc
imshow('Room_RightTri.jpg','InitialMagnification','fit')
fprintf('You enter the hallway to the right')
fprintf('\nIt splits off into 3 directions')
fprintf('\n\nChoices:Back, Right, Left, Straight, Inventory, Inspect\n')
choice_1 = strtrim(lower(input('What do you choose?\n','s')));
if strfind(choice_1,'straight')
input('You proceed straight...')
run('Straight_Room_Tri')
true = 1;
elseif strfind(choice_1,'right')
    input('You proceed right')
    run('Right_Room_Tri')
    true=1;
elseif strfind(choice_1,'left')
    input('You proceed left')
    run('Left_Room_Tri')
    true=1;
elseif strfind(choice_1,'straight')  
    input('You proceed straight...','s')
    true=1;
    run('Straight_Room_Tri')
elseif strfind(choice_1,'inspect')
    input('You find a skeleton key with a note...\n')
    key=1;
    fprintf('Three rooms. One safe. Two Dangerous.\n')
    fprintf('All lead to The End.\n')
    input('That''s all it says...','s')
    key = 1;
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