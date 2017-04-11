clc
clear
enter = input('Hello! Welcome to the first test!\n','s');
name = input('\nFirst thing, what is your name? \n','s');
   
fprintf('\n%s... A nice name, I like it\n',name);
fprintf('This game requires in-game text, as well as the help of a Matlab window\n')
fprintf('Once this game starts, a window will appear to guide you through\n')
fprintf('Keep Matlab, and the figure window open together.\n')
fprintf('Once you are done reading certain passages, pressing "Enter" will continue the passage\n')

Left_room_fight = 0;
Straight_room_fight = 0;
checkoff = 0;
Health = 50;
MaxHP = 50;
sword = [];
defense = 0;
experience = 0;
Elixir = 0;
Strength_Potion_Turn=0;
Strength_Potion=0;
%Monster elements
MonsterHP = 25;
MonsterHP3 = 45;
Monster_att = 0;
Bomb = 0;
Potion = 0;
Special = 0;
Chest=0;
Monst=0;
Potion_use=0;
Fire=0;
Final_Chest=0;
run('Battle_song')
clear sound
run('Battle_song_low')
clear sound
run('Boss_Song1')
clear sound

input('\n\n\nWhen you are ready, press "Enter" \n','s')
clc
title = {'Brave';'Noble';'Lame';'Innocent';'Magnificent';'Crippled';'Ambivalent';'Weak';'Stupid';'Schlong';'Horrible';'Certified F***boi'};
titl =  transpose(title);
tit = [titl{(randi([1 12]))}];

if strfind(name,'Shaumik')
title= {'Savior of Matlab'};
titl = transpose(title);  
tit = [titl{1}];

elseif strfind(name,'shaumik')
   title = {'Savior of Matlab'};
   titl= transpose(title);
   tit = [titl{1}];
end

if strfind(name,'jump')
    run('Decision_1')
end

%Human elements




run('Story');
run('Decision_1');
run('Tutorial');
run('After_fight_room');



    
    
    
