Battle = 1;
checkoff = 0;
sword = 0;
defense = 0;
%Monster elements
Monster_att = 0;
clc
low = 4;
high = 10;
experience = 0;
if Health >0 || MonsterHP >0
enter = input('\nA monster appears to attack! \n','s');
run('Battle_song') 
end
while Health >=0 && MonsterHP >=0
        if Health<10
            %I have to find a way to play low health, but not constantly
            %clear the sound, just the battle song music
        clear sound
        run('Battle_song_low')
        fprintf('Warning!!! You''re at very low health!!!!\n')
        end
        

while checkoff ==0
    clc
    fprintf('Current HP: %4.2f\n',Health);
fprintf('Monster''s health: %4.2f\n',MonsterHP); 
    %Checkoff is a way of validating that the user has done an action in
    %his turn. If he doesn't do anything, checkoff will remain at 0 and a
    %code will rerun his turn until he does something
fight = strtrim(lower(input('Type "attack" to strike, or "defend" to raise your shield\n','s')));
%find a way for it to repeat in case the person does not type in the
%correct word and how to repeat when a person types in status
if strfind(fight,'attack')
    checkoff = 1;
    attack = input('\nYou swing your sword\n','s');
    sword = randi([low high],1);
    %attack parameters
        if sword == high
        fprintf('You swing with all your might! Critical damage!\n');
        elseif sword == low
            fprintf('You lightly tap the monster...\n');
        elseif sword == low+1
            fprintf('You misstep when attacking...\n');
        end
        
        if defense ==1
            fprintf('You charged your attack!\n');
            sword = randi([11 12],1);
            defense = 0;
        end
    

elseif strfind(fight,'defend')
    defense = 1;
    fprintf('You put up your shield. Your defense increases\n');
    fprintf('Your attack increases next turn\n');
    sword = 0;
    checkoff=1;
    
elseif strfind(fight,'barley')
    sword=50;
    checkoff=1;
    
    
else
    checkoff=0;
    
    
end

end
    if sword ==0
        enter = input('End of your turn\n', 's');
        
    else
    response = fprintf('You do %4.2f damage!\n',sword);
    enter = input('End of your turn\n', 's');
    clc
    MonsterHP = MonsterHP-sword;
    end
%checkoff is set to zero at the start of the monster's turn
checkoff=0;
%Need to find a way before the monster attacks to identify the monsters health
%So if monster is dead, he cant attack
if MonsterHP <=0
    clc
    clear sound
    MonsterHP=-1;
    run('Aftermath')
    break
    
end
if defense==1
    Monster_att = randi([1 2],1);
    fprintf('The monster attacks!\n');
    enter = input('\nBut you defended.\n','s');

end

if defense==0
    enter = input('The monster attacks!\n','s');
    Monster_att = randi([6 8],1);
end




Health = (Health-Monster_att);
damage = fprintf('You lose %4.2f HP!\n',Monster_att);
if Health<0
    clc
    clear sound
    run('Aftermath')
    Health=-1;
    break
end
enter = input('Your turn\n','s');
clc
end
Battle = 0;
