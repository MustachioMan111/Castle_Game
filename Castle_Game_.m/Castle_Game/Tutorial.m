clc
fprintf('You have fought your first monster!\n')
input('There will undoubtedly be more...\n','s');
clc
fprintf('\n\nTo look around rooms, type "inspect" to find items in the room.\n');
fprintf('You can inspect in ANY room, and it gives helpful hints too.\n');
fprintf('You now have an "inventory" to check the items that you have.\n');
input('You can type inventory to use items inside or outside of battle.\n Warning: Opening the inventory in battle counts as a use of a turn!\n','s');
fprintf('If you want to go back to a previous room type, "back"\n');
fprintf('You may go back as many times as you wish. You will not encounter enemies twice.\n');
fprintf('Do not leave the castle, it''s much too dangerous outside now.\n');
direct = strtrim(lower(input('\n\nIf you understand the instructions given, shout "Huzzah!"\n','s')));
true = 0;
body = 0;
bomb = 0;
while true==0
if strfind(direct,'huzzah')
   input('\n\nThen let the game commence!','s')
   true = 1;
   clc
elseif strfind(direct,'huzzah!')
   input('\n\nThen let the game commence!','s')
   true = 1;
   clc 
else
    clc
    run('Tutorial')
end
end
run('After_fight_room')