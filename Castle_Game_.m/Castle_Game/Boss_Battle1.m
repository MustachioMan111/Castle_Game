Battle = 1;
checkoff = 0;
sword = 0;
defense = 0;
%Monster elements
Monster_att = 0;
MonsterHP = 155;
Monster_Defend = 0;
Once=0;
%%%%%%TAKE THIS OUT BEFORE FINISH%%%%%
%Special = 0;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
Fire_Start=0;
if Fire==0
imshow('Boss_Monster3.jpg','InitialMagnification','fit')
end
if Health >0 || MonsterHP >0
run('Boss_Song1') 
end
while Health >=0 && MonsterHP >=0
    Fire_Start=0;
    Fire_Start=randi([1 10],1);
    %The Boss is able to defend, and this is the random number to allow it
    Monster_Defend = 0;
    Monster_Defend = randi([1 100],1);
        if Health<10
            %I have to find a way to play low health, but not constantly
            %clear the sound, just the battle song music
        fprintf('Warning!!! You''re at very low health!!!!\n')
        end
while checkoff ==0
fprintf('Current HP: %4.2f\n',Health);
fprintf('Monster''s health: %4.2f\n',MonsterHP); 
    %Checkoff is a way of validating that the user has done an action in
    %his turn. If he doesn't do anything, checkoff will remain at 0 and a
    %code will rerun his turn until he does something
fight = strtrim(lower(input('Type "attack" to strike, or "defend" to raise your shield,\nor "Inventory" to access your inventory\n','s')));
if strfind(fight,'attack')
    checkoff = 1;
    attack = input('\nYou swing your sword\n','s');
    sword = randi([low high],1);
    %attack parameters 
        if defense ==1
            fprintf('You charged your attack!\n');
            sword = randi([11 12],1);
            defense = 0;
        end
        %If the random number is 15 or less, the monster defends 
        %This means theres a 15 percent chance of defending
        %However, if a player is using a strength potion, the boss cannot
        %defend
        if Monster_Defend<=15 && Strength_Potion_Turn==0
           fprintf('But the statue predicts your movements and guards from your attack!\n')
           sword=3;
           MonsterHP=MonsterHP-3;
        elseif Strength_Potion_Turn==1
           sword =sword+10;
           Strength_Potion_Turn=Strength_Potion_Turn+1;
        elseif Strength_Potion_Turn==2
           sword =sword+10;
           Strength_Potion_Turn=Strength_Potion_Turn+1;
        elseif Strength_Potion_Turn==3
           sword =sword+10;
           Strength_Potion_Turn=Strength_Potion_Turn+1;
        elseif Strength_Potion_Turn==4
           sword =sword+10;
           Strength_Potion_Turn=Strength_Potion_Turn+1;
        elseif Strength_Potion_Turn==5
           sword =sword+10;
           Strength_Potion_Turn=Strength_Potion_Turn+1;
       elseif Strength_Potion_Turn==0
       elseif sword == high
        fprintf('You swing with all your might! Critical damage!\n');
        end
        
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
elseif strfind(fight,'defend')
    defense = 1;
    fprintf('You put up your shield. Your defense increases\n');
    fprintf('Your attack increases next turn\n');
    sword = 0;
    checkoff=1;
elseif strfind(fight,'inventory')
    run('Inventory')
    checkoff=1;
    if Potion_use==1
        sword=0;
    end
    if sword==30
        if Fire>=1
            Fire=0;
            fprintf('\n\nThe statue is knocked back!\n')
            fprintf('The blast of the bomb sends smoke and sut around!\n') 
            input('The fire is cleared!','s');
            imshow('Boss_Monster3.jpg','InitialMagnification','fit')
        elseif Fire==0
            fprintf('\n\nThe statue sees that you throw the bomb!\n')
            fprintf('He bats it out of his way and is not effected!\n')
            input('He''s too focused on you right now...\nYou''ll have to wait until he''s distracted on something else.\n')
            sword=0;
        end
    end
%elseif strfind(fight,'barley')
%     sword=5000;
%     checkoff=1;
else
    clc
end

end
    if sword ==0
        enter = input('End of your turn\n', 's');
        clc
    else
        response = fprintf('You do %4.2f damage!\n',sword);
        enter = input('End of your turn\n', 's');
        clc
        MonsterHP = MonsterHP-sword;
       
    end
    if Fire>=1
        if Fire==1
        fprintf('But the fire is spreading...\n')
        input('You lose 3 HP!','s');
        Health= Health-3;
        Fire=Fire+1;
        elseif Fire>1
        fprintf('But the fire is blazing!\n')
        fprintf('You lose 5 HP!\n')
        input('There must be something you can use to clear the fire...','s');
        Health=Health-5;
        end
    end   

    %Simple check statement to confirm player is still alive
    if Health<=0
    clc
    clear sound
    run('Aftermath_Boss')
    Health=-1;
    break
    end
    
   
%checkoff is set to zero at the start of the monster's turn
%% Monster Parameters
checkoff=0;
Special=Special+1; %---Charge for monster's special attack

%Boss's actions change once health is less than 75 HP
%He sets room on fire
if MonsterHP<75
    if Fire==0 && Once==0 %This IF is initiated only once
    clc
    clear sound
    fprintf('The statue is getting weaker.\n')
    input('A chunck of stone falls off the statue...','s');
    input('It its anger it raises it''s arms...\nIt closes it''s eyes and focuses on something else...\n','s');
    input('A fire engulfs the room!\n\n','s');
    run('Boss_Song1_Low')
    Fire=1; %---Variable sets room on fire
    imshow('Boss_Monster4.jpg','InitialMagnification','fit')
    Once=1; %This specific IF is only initiated once
    %IF the Boss has set the room on fire previously. Then it will skip to
    %this action rather than to the other one
    elseif Once==1 && Fire==0
    % For all other instances when the room is set on fire
    clc
    fprintf('The statue raises it''s arms again...\n');
    input('The fires have come back!\n','s');
    imshow('Boss_Monster4.jpg','InitialMagnification','fit')
    Fire=1;
    
    end
end
if MonsterHP <=0
    clc
    clear sound
    MonsterHP = 0;
    run('Aftermath_Boss')
    break
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if defense==1 %----If the player defends, the boss does almost no damage
    if Special==5
    else
    Monster_att = randi([1 2],1);
    fprintf('The statue swings!\n');
    fprintf('But you defended\n');
    input('He pounds it against the shield!','s')
    end
%If Player doesnt defend Monster does damage
elseif defense==0 && Special~=5
    enter = input('The statue swings it''s sword!\n','s');
    Monster_att=randi([9 11],1);
end
%% Special attack charge
%Special attack is done every 5 turns
%If the player defended before the attack, then only 3 HP is lost
%If the player did not defend, then 20 HP is lost
if Special==5
    clc
    fprintf('The statue''s sword floats over it''s head\n')
    fprintf('It fires at you with incredible speed!\n')
    Special=0; %----Special attack counter resets after attack is done
    if defense==0
        input('\nYou were unprepared for his attack!\n','s')
        Monster_att=20;        
    elseif defense==1
        fprintf('You prepared your shield for his attack!')
        input('The sword pounds against the shield.\nYou fly back, but you''re mostly unscaved!\n','s')
        Monster_att=3;        
    end
end
%%
Health = (Health-Monster_att);
damage = fprintf('You lose %4.2f HP!\n',Monster_att);

%A warning to the player that the next attack is a special attack
if Special==4
    fprintf('It looks like he''s preparing something...\nHe''s focused intently on you....\n')
    
end
%If player health is less than or equal to zero, then the aftermath is run.
%Since the aftermath would be for the player, it would be a player's loss
if Health<=0
    clc
    clear sound
    run('Aftermath_Boss')
    Health=-1;  
end
enter = input('Your turn\n','s');
clc
end
Battle = 0;
clear sound