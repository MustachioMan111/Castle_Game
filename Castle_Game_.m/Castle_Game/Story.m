fprintf('You are %s the %s!\n',name,tit);
imshow('Castle_Outside.jpg','InitialMagnification','fit');
enter = input('You come to this castle in search of treasure!\n','s');
fprintf('%sly, you cross the bridge to enter the castle...\n',tit);
imshow('Bridge2.jpg','InitialMagnification','fit');
input('........\n','s');
fprintf('\n\nUntil you trip on a rock,\nfall flat on your face,\n and the whole bridge collapses!\n');
imshow('Falling.jpg','InitialMagnification','fit');
input('Looks like your journey is over for you!','s');
clc
fprintf('.....\n');
fprintf('.....\n');
fprintf('.....\n');
imshow('Alive.jpg','InitialMagnification','fit');
input('But wait! You''re still alive!\n','s');

imshow('Underpart.jpg','InitialMagnification','fit');

input('Looks like there is an entrance to the castle down here too\n','s');

imshow('Inside1.jpg','InitialMagnification','fit');
input('Well, nowhere to go but in!\n','s');