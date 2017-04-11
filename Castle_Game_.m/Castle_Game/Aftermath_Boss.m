experience = experience+5;
if MonsterHP<=0
    run('victory_song')
    enter = input('The statue is crumbling\n','s');
    enter = input('It shatters into pieces!\n','s');
    fprintf('You gained 50 experience!\n')
    enter = input('The path to the stairway is now clear!\n','s');
    clc
    run('Level_Up_Sound')
    fprintf('CONGRADULATIONS!!! YOU''VE BEATEN THE GAME!\n')
    input('This game has been so much fun to make, and hopefully as much to play!')
elseif Health<=0
    enter = input('Your HP has reached 0!\n','s');
    enter = input('You''ve been defeated\n','s');
    enter = input('The statue has commandeered your Matlab! All is lost!\n','s');
    clc
    fprintf('Statue: Well %s, any last words?\n',name);
    Last_words = input('Last words:','s');
    fprintf('Statue: How cute, farewell!\n');
    pause(1);
    C6S = (amp*sin(2*pi*441*[0:(1/f):0.5]))
    pause(0.5)
    exit
end
run('Level_Up')