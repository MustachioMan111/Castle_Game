if experience==10
 run('Level_Up_Sound')
fprintf('You leveled up!\n')
fprintf('Max Health is now 60\n')
input('Your attack damage increased by 1\n','s')
low = low+1;
high = high+1;
MaxHP=MaxHP+10;
end
if experience==20
 run('Level_Up_Sound')
fprintf('You leveled up!\n')
fprintf('Max Health is now 70\n')
input('Your attack damage increased by 1\n','s')
low = low+1;
high = high+1;
MaxHP=MaxHP+10;
end
clc
