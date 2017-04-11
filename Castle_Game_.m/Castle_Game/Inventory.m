clc
fprintf('Please type in the name of the item that you wish to select.\n')
fprintf('If you wish to exit inventory, type "exit"\n')
fprintf('================================INVENTORY===============================\n')
items = {'Bomb' 'Potion' 'Hairspray'};
item = transpose(items);
ite = [item{(1:end)}];
cnt = 0;
done = 0;
Potion_use=0;
Strength_Potion_Turn=0;
if Bomb>0
    fprintf('Bomb x%4.2f',Bomb);
    cnt = 1;
end
if Potion>0
    fprintf('\nPotion x%4.2f',Potion);
    cnt = 1;
end
if Elixir>0
    fprintf('\nElixir x%4.2f',Elixir)
    cnt=1;
end
if Strength_Potion>0
    fprintf('\nStrength Potion x%4.2f',Strength_Potion)
    cnt=1;
end
if Bomb==0 && Potion==0 && Strength_Potion==0 && Elixir==0
    fprintf('You do not have any items! Perhaps you should inspect around the rooms...\n')
    fprintf('Please type "exit" to exit inventory')
end
fprintf('\n\n========================================================================\n')




while done==0
direct = strtrim(lower(input('Selected Item:\n','s')));
if strfind(direct,'exit')
    done=1;
    clc
end

if strfind(direct,'strength potion')
    fprintf('Strength Potion: Increases damage by 10 points.\nIgnores an enemy defending.\nActive for 5 turns.\nWill not effect attack strength while defending.\n')
    choice = strtrim(lower(input('Will you use the Strength Potion?\n','s')));
    direct = [];
    if strfind(choice,'ye')
        fprintf('\nYou drink the strength potion\n')
        fprintf('You''re suddenly filled with rage...\n')
        input('Strength Up!\n','s')
        Strength_Potion_Turn=1;
        direct=[];
        done=1;
        sword=0;
        Strength_Potion=Strength_Potion-1;
    end
end

if strfind(direct,'potion')
    fprintf('Potion: Heals 30 HP.\n')
    choice = strtrim(lower(input('Will you use it?:\n','s')));
    if strfind(choice,'ye')
        input('You gain 30 HP!','s');
        Potion = Potion-1;
        Health = Health+30;
        Potion_use=1;
        if Health>MaxHP
            Health=MaxHP;
            input('\nYour health maxed out!','s');
        end
        done = 1;
        sword=0;
        clc        
    elseif strfind(choice,'no')
        input('You exit your inventory.','s');
        done = 1;
        clc
    else
        input('Choose a valid response','s') 
    end 
end
if strfind(direct,'bomb')
    fprintf('Bomb: Deals a large amount of damage. Also triggers certain special events in battle.\n')
    choice = strtrim(lower(input('Will you use your bomb?\n','s')));
    if strfind(choice,'ye')
        fprintf('\n\nYou lob the bomb!\n')
        Bomb = Bomb-1;
        sword = 30;
        done = 1;
    elseif strfind(choice,'no')
        input('You put the bomb away and exit inventory','s')
        done = 1;
        clc
    else
        fprintf('\n\nYou either typed in an incorrect key, or\n')
        input('You are not currently in battle.','s')
        clc
        run('Inventory')
        clc
    end        
end 

if strfind(direct,'elixir')
    fprintf('Exlixir: Heals 100 HP\n')
    choice = strtrim(lower(input('Will you use it?:\n','s')));
    if strfind(choice,'ye')
        input('You gain 100 HP!','s');
        Elixir = Elixir-1;
        Health = Health+100;
        Potion_use=1;
        if Health>MaxHP
            Health=MaxHP;
            input('\nYour health maxed out!','s');
        end
        done = 1;
        clc        
    elseif strfind(choice,'no')
        input('You exit your inventory.','s');
        done = 1;
        clc
    else
        input('Choose a valid response','s') 
    end 
end

end





