clc;
first = 0;
Chest=0;
Escape=0;
imshow('Right_Room.jpg','InitialMagnification','fit')
if Escape==1
    Monst=1;
end
while Monst==0

fprintf('You enter the right room\n')
fprintf('The doors close behind you...\nAnd locks...\n')
fprintf('A chest within the room begins to rumble violently!\n')
fprintf('A keyhole is visible in on the door\n')
choice_1 = strtrim(lower(input('Do you have the key?\n','s')));
    if strfind(choice_1,'ye')
        if key==0
            clc
            input('You do not have a key. You liar!','s');
            input('A monster bursts out of the chest!');
            Escape=0;
            Monst=1;
            run('Monster3')
        elseif key==1
            clc
            fprintf('\nYou insert the key, and quickly open the door!\n')
            fprintf('You slam the door shut and lock it!\n')
            input('Pounding can felt from the other side of the door...\n');
            Escape=1;
            Monst=1;
            run('right_three_way')
        end
        
    elseif strfind(choice_1,'no')
        clc
        input('Realizing you don''t have the key you turn around.')
        input('A monster bursts out of the chest!');
        Escape=0;
        Monst=1;
        run('Monster3')
    else
        fprintf('You take to long to figure if you have the keys...\n')
        input('A monster bursts out the chest!')
        Monst=1;
        run('Monster3')
    end
    
    
end
fprintf('There isn''t much in this room...')
choice=0;
while choice==0
    clc
    fprintf('\nChoice: Inspect, Inventory, Back, Left\n')
    choice_1 = strtrim(lower(input('What do you choose?\n','s')));
    if strfind(choice_1,'back')
        choice=1;
        run('right_three_way')
    elseif strfind(choice_1,'inventory')
        run('Inventory')
        choice=0;
    elseif strfind(choice_1,'inspect')
        fprintf('\nThere is an open chest, and claw marks are around the room\n')
        input('There is a door to the left','s');
        choice=0;
        clc
    elseif strfind(choice_1,'left')
        input('You go left...','s');
        choice=1;
        run('Room_Final')
    else
        input('\nMake a decision\n','s')
        choice=0;
    end
            
end