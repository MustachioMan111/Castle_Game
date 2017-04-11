clc
imshow('Straight_Room.jpg','InitialMagnification','fit')
if Straight_room_fight ==0
fprintf('It appears to be a sitting room...\nThere''s a lot of chairs...\n')
input('You walk forward...','s');
run('Monster4')
Straight_room_fight=1;
end
choice = 0;

while choice==0
    clc
    if chair==2
        fprintf('It apprears to be a sitting room...\nExcept there''s no more chairs\n')
    elseif chair<=1
        fprintf('It appears to be a sitting room\nThere''s a lot of chairs\n')
    end
    
    fprintf('\nChoice: Inspect, Inventory, Straight\n')
    choice_1 = strtrim(lower(input('What do you choose?\n','s')));
    if strfind(choice_1,'straight')
        choice=1;
        run('Room_Final')
    elseif strfind(choice_1,'inventory')
        run('Inventory')
        choice=0;
    elseif strfind(choice_1,'inspect')
        if Strength_Potion==0
           if chair==0
            input('You see several vases in the room and look inside of them.\n','s');
            input('You find a Strength Potion.\n');
            Strength_Potion=1;
            choice=0;
           elseif chair>0
            input('You throw chairs at all the vases you see in the room...','s');
            input('You find a Strength Potion.','s');
            choice=0;
            Strength_Potion=1;
            chairs=2;
           end
        else
            fprintf('You go pick up a chair to start throwing.\n')
            input('But all the vases and chairs are already broken...','s')
            
        end

    else
        input('\nMake a decision\n','s');
        choice=0;
    end      
end