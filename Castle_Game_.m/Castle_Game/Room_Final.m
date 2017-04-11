clc
imshow('Room_Final.jpg','InitialMagnification','fit')
choice=0;
input('Beyond lies the final room...\n','s');
input('You can go back before entering.','s');
input('However, once you enter, you cannot leave...\n','s');
while choice==0
    input('Final decision. Final choice.\n','s')
    clc
    fprintf('\nChoice: Inspect, Inventory, Back, Forward\n')
    choice_1 = strtrim(lower(input('What do you choose?\n','s')));
    if strfind(choice_1,'inventory')
        run('Inventory')
        choice=0;
    elseif strfind(choice_1,'inspect')
        fprintf('\nThere is a large chest to the left of the door\n')
        input('You open it...\n','s');
        if Final_Chest==0
        input('You find 2 bombs and an Elixir!\n')
        Elixir = Elixir+1;
        Bomb=Bomb+2;
        choice=0;
        Final_Chest=1;
        clc
        elseif Final_Chest==1
        input('It''s empty\n','s');
        choice=0;
        clc
        end
    elseif strfind(choice_1,'back')
        choice=1;
        input('You go back..','s');
        run('right_three_way')
    elseif strfind(choice_1,'forward')
        clc
        input('You cannot exit once you enter.\n')
        choice_1 = strtrim(lower(input('Are you sure you wish to go foward?\n','s')));
        choice=0;
        while choice==0
            if strfind(choice_1,'ye')
                choice=1;
                run('Boss_room')
            else
                run('Room_Final')                
            end
        end
        
    else
        input('\nMake a decision\n','s')
        choice=0;
    end
            
end