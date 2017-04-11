experience = experience+5;
if MonsterHP<=0
    run('victory_song')
    enter = input('The monster has perished!\n','s');
    enter = input('You gained 5 experience points!\n','s');
elseif Health<=0
    enter = input('Your HP has reached 0!\n','s');
    enter = input('You''ve been defeated\n','s');
    enter = input('The monster has commandeered your Matlab! All is lost!\n','s');
    clc
    fprintf('Monster: Well %s, any last words?\n',name);
    Last_words = input('Last words:','s');
    fprintf('Monster: How cute, farewell!\n');
    pause(1);
    C6S = (amp*sin(2*pi*441*[0:(1/f):0.5]))
    pause(0.5)
    exit
end
run('Level_Up')