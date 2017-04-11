clc
imshow('Boss_room1.jpg','InitialMagnification','fit')
input('You enter the final room.\n','s')
clc
input('It''s the entrance to a palace stairs...','s');
fprintf('There''s a single still statue in the middle of room.\n');
imshow('Boss_Monster1.jpg','InitialMagnification','fit')
input('You walk forward...','s');
fprintf('\nThe statue comes to life.\n')
input('It pauses, it''s waiting for your next move.\n','s');

fprintf('\nChoices: Reason, Yell, Nothing\n')
choice_1 = strtrim(lower(input('What do you do?\n','s')));

if strfind(choice_1,'reason')
    clc
    input('You tell it that you are just trying to leave the castle\n And ask it let you pass.','s')
    input('Slowly, the statue responds...','s')
    pause(0.5)
    clc
    run('Boss_Reply_Reason')
    pause(2)
    run('Boss_song')
    fprintf('The monster grabs a sword and readies it''s attack!\n')
    fprintf('You prepare for battle!\n')
    pause(5)
elseif strfind(choice_1,'yell')
    clc
    input('You tell the monster to get out of the way!\nYou''re here for the treasure!\n','s')
    input('Slowly, the statue responds...','s')
    pause(0.5)
    clc
    run('Boss_Reply_Yell')
    pause(2)
    run('Boss_song')
    fprintf('The monster grabs a sword and readies it''s attack!\n')
    fprintf('You prepare for battle!\n')
    pause(5)
else
    clc
    pause(2)
    input('You say nothing, it''s time to end this')
    run('Boss_song')
    fprintf('The monster grabs a sword and readies it''s attack!\n')
    fprintf('You prepare for battle!\n')
    pause(5)
end
run('Boss_Battle1')


