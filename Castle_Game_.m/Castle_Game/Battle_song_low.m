A3 = 220;
B3 = 246.9;
C3 = 130.8;
D3 = 146.8;
E3 = 164.8;
F3 = 174.6;
G3 = 196;

C4 = 261.6;
Charp = 277.2;
D4 = 293.7;
EFlat = 311.1;
E4 = 329.6;
F4 = 349.2;
F5 = 698.5;
F4harp = 370.0;
G4 = 392.0;
Gharp = 415.3;
A4 = 440;
BFlat = 466.2;
B4 = 493.9;

G5 =784;
E5 = 659.3;
D5 = 587.3;
C5 = 523.3;
A5 = 880.0;
B5 = 987.8;
F5 = 698.5;
F5sharp = 740;


C6 = 1047;
C6harp = 1109;
D6 = 1175;
D6harp = 1245;
E6 = 1319;
F6 =1397;
F6harp = 1480;
G6 = 1568;
G6harp =1661; 
A6 = 1760;
B6Flat = 1865;
B6 = 1976;
%Thee two decribe the wavelength
amp=1;
f=3000;
%Value decribe how long the note i
value = [0:(1/f):0.4];
%The regular speed will be put at 0:(1/f):0.5

%I made two value variable in cae a note need to be played longer
%The Ret variable i for ret note o that two note of the ame do not play
%over each other. It can be lengthened or hortened by changing Retlength

Rest = (amp*sin(2*pi*0*0:(1/f):0.05));
Rest1 = (amp*sin(2*pi*0*0:(1/f):0.1));
Rest2 = (amp*sin(2*pi*0*0:(1/f):0.2));
Rest3 = (amp*sin(2*pi*0*0:(1/f):0.3));
Rest4 = (amp*sin(2*pi*0*0:(1/f):0.4));
Rest5 = (amp*sin(2*pi*0*0:(1/f):0.5));
Rest7 = (amp*sin(2*pi*0*0:(1/f):0.7));
RestW = (amp*sin(2*pi*0*0:(1/f):1.3));
RestW1 = (amp*sin(2*pi*0*0:(1/f):1.5));
RestH = (amp*sin(2*pi*0*0:(1/f):0.025));


Restlong =(amp*sin(2*pi*0*0:(1/f):0.15));
RestShort = (amp*sin(2*pi*0*0:(1/f):0.05));

%Thee are the note variable
%To play the note, put thee value into the matrix below in the order
%they're played in the ong
%Think of thee a the Note"ound" () you need the "" to play the ound

D2S = (amp*sin(2*pi*73.42*value));
E2S = (amp*sin(2*pi*82.41*value)); 
E2shp = (amp*sin(2*pi*77.78*value));
F2S = (amp*sin(2*pi*87.31*value));
F2shp = (amp*sin(2*pi*92.50*value));
G2S = (amp*sin(2*pi*98*value));
A2S = (amp*sin(2*pi*110*value));

A3S = (amp*sin(2*pi* A3 *value));
B3S = (amp*sin(2*pi* B3*value));
B3shp = (amp*sin(2*pi*233.1*value));
C3S = (amp*sin(2*pi* C3*value));
D3S = (amp*sin(2*pi* D3*value));
E3S = (amp*sin(2*pi* E3*value));
F3S = (amp*sin(2*pi* F3*value));
F3shp = (amp*sin(2*pi*185*value));
G3S = (amp*sin(2*pi* G3*value));

A4S = (amp*sin(2*pi*A4*value));
B4S = (amp*sin(2*pi*B4*value));
B4shp = (amp*sin(2*pi*466.2*value));
C4S = (amp*sin(2*pi*C4*value));
D4S = (amp*sin(2*pi*D4*value));
E4S = (amp*sin(2*pi*E4*value));
E4shp = (amp*sin(2*pi*311.1*value));
F4S = (amp*sin(2*pi*F4*value));
F4shp= (amp*sin(2*pi*F4harp*value));
G4S = (amp*sin(2*pi*G4*value));

A5S = (amp*sin(2*pi*A5*value));
B5S = (amp*sin(2*pi*B5*value));
C5S = (amp*sin(2*pi*C5*value));
D5S = (amp*sin(2*pi*D5*value));
E5S = (amp*sin(2*pi*E5*value));
E5shp = (amp*sin(2*pi*622.3*value));
F5S = (amp*sin(2*pi*F5*value));
F5shp = (amp*sin(2*pi*F5sharp*value));
G5S = (amp*sin(2*pi*G5*value));

C6S = (amp*sin(2*pi*C6*value));
D6S = (amp*sin(2*pi*1175*value));
G5Short = (amp*sin(2*pi*G5*[0:(1/f):0.25]));
D5Short = (amp*sin(2*pi*D5*[0:(1/f):0.25]));
valueshort = 0:(1/f):0.2;
B4Short = (amp*sin(2*pi*B4*valueshort));
D5SLong = (amp*sin(2*pi*G5*[value*2]));

%This is an example the matrix and how to put it in. I ued comma to help
%me see when the end of a meaure was
%First, put in the Note ound, then ue the ound function to play it
c = [B3shp G3S B3shp D4S G4S D4S B3shp G3S A3S F3S A3S C4S F4S C4S A4S F4S G4S E4shp G4S B4shp E5shp B4shp G4S E4shp C4S D4S A3S F3shp A3S D4S F4shp A4S];
d = [G2S G2S G2S G2S G2S G2S G2S G2S F2S F2S F2S F2S F2S F2S F2S F2S E2shp E2shp E2shp E2shp E2shp E2shp E2shp E2shp D2S D2S D2S E2S E2S E2S F2shp F2shp]; 

sound([c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c])
sound([d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d,d])