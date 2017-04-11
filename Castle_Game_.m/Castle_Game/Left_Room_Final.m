clc
imshow('Room_Left_Final.jpg','InitialMagnification','fit')

if Left_room_fight==0
Left_room_fight=1;
fprintf('You enter the room, its a dead-end, and covered with scratch marks\n')
fprintf('There''s a perfectly intact mirror in the room.\n')
input('You approach the mirror..\n','s');
input('Looks like a regular ol'' mirror','s')
clc
pause(0.3)
input('Wait, someone is here with you...\n','s')
fprintf('...\n...\n.......!')
pause(0.3)
clc
run('Monster2')
end

cnt=0;
while cnt==0
    fprintf('The mirror is now decrepit\n');
fprintf('You enter the room, its a dead-end, and covered with scratch marks\n')
fprintf('Options: Back, Inspect, Inventory\n')
choice_1 = strtrim(lower(input('What do you do?\n','s')));
   if strfind(choice_1,'back')
       clc
       run('After_fight_room')
       cnt=1;
       break
   elseif strfind(choice_1,'inventory')
       clc
       run('Inventory')
       cnt=0;
   elseif strfind(choice_1,'inspect')
       clc
       fprintf('You look in the mirror...\n')
       input('It''s only you\n','s')
       if Bomb==0
       fprintf('But wait, the mirror is removable...\n')
       input('You find 1 bomb!')
       Bomb=1;
       clc
       else
       run('Left_Room_Final')
       cnt=0;
       end
   else
       run('Left_Room_Final')
   end
end
