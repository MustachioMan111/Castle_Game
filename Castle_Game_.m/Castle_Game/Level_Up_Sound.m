amp=1;
f=4000;
value = [0:(1/f):0.05];
Rest = (amp*sin(2*pi*0*0:(1/f):0.05));
Rest1 = (amp*sin(2*pi*0*0:(1/f):0.1));
Rest2 = (amp*sin(2*pi*0*0:(1/f):0.2));
Rest3 = (amp*sin(2*pi*0*0:(1/f):0.3));
Rest4 = (amp*sin(2*pi*0*0:(1/f):0.4));
Rest45 = (amp*sin(2*pi*0*0:(1/f):0.45));
Rest5 = (amp*sin(2*pi*0*0:(1/f):0.5));
Rest7 = (amp*sin(2*pi*0*0:(1/f):0.7));
RestW = (amp*sin(2*pi*0*0:(1/f):1.3));
RestW1 = (amp*sin(2*pi*0*0:(1/f):1.5));
RestH = (amp*sin(2*pi*0*0:(1/f):0.025));

C2 = (amp*sin(2*pi*65.41*value));
C2SHP = (amp*sin(2*pi*69.30*value));
D2 = (amp*sin(2*pi*73.42*value));
E2FLT = (amp*sin(2*pi*77.78*value));
E2 = (amp*sin(2*pi*82.41*value)); 
F2 = (amp*sin(2*pi*87.31*value));
F2SHP = (amp*sin(2*pi*92.50*value));
G2 = (amp*sin(2*pi*98*value));
G2SHP = (amp*sin(2*pi*103.8*value));
A2 = (amp*sin(2*pi*110*value));
B2FLT = (amp*sin(2*pi*116.5*value));
B2 = (amp*sin(2*pi*123.5*value));

C3 = (amp*sin(2*pi* 130.8*value));
C3SHP = (amp*sin(2*pi*138.6*value));
D3 = (amp*sin(2*pi*146.8*value));
E3FLT = (amp*sin(2*pi*155.6*value));
E3 = (amp*sin(2*pi*164.8*value));
F3 = (amp*sin(2*pi*174.6*value));
F3SHP = (amp*sin(2*pi*185*value));
G3 = (amp*sin(2*pi*196*value));
G3SHP = (amp*sin(2*pi*207.7*value));
A3 = (amp*sin(2*pi*220*value));
B3 = (amp*sin(2*pi*246.9*value));
B3FLT = (amp*sin(2*pi*233.1*value));

C4 = (amp*sin(2*pi*261.6*value));
C4SHP = (amp*sin(2*pi*277.2*value));
D4 = (amp*sin(2*pi*293.7*value));
E4 = (amp*sin(2*pi*311.1*value));
E4FLT = (amp*sin(2*pi*329.6*value));
F4 = (amp*sin(2*pi*349.2*value));
F4SHP= (amp*sin(2*pi*370*value));
G4 = (amp*sin(2*pi*392*value));
G4SHP = (amp*sin(2*pi*415.3*value));
A4 = (amp*sin(2*pi*440*value));
B4FLT = (amp*sin(2*pi*466.2*value));
B4 = (amp*sin(2*pi*493.9*value));

C5 = (amp*sin(2*pi*523.3*value));
C5SHP = (amp*sin(2*pi*554.4*value));
D5 = (amp*sin(2*pi*587.3*value));
E5FLT = (amp*sin(2*pi*622.3*value));
E5 = (amp*sin(2*pi*659.3*value));
F5 = (amp*sin(2*pi*698.5*value));
F5SHP = (amp*sin(2*pi*740*value));
G5 = (amp*sin(2*pi*784*value));
G5SHP = (amp*sin(2*pi*830.6*value));
A5 = (amp*sin(2*pi*880*value));
B5FLT = (amp*sin(2*pi*932.3*value));
B5 = (amp*sin(2*pi*987.8*value));

C6 = (amp*sin(2*pi*1047*value));
C6SHP = (amp*sin(2*pi*1109*value));
D6 = (amp*sin(2*pi*1175*value));
E6FLT = (amp*sin(2*pi*1245*value));
E6 = (amp*sin(2*pi*1319*value));
F6 = (amp*sin(2*pi*1397*value));
F6SHP = (amp*sin(2*pi*1480*value));
G6 = (amp*sin(2*pi*1568*value));
G6SHP = (amp*sin(2*pi*1661*value));
A6 = (amp*sin(2*pi*1760*value));
B6FLT = (amp*sin(2*pi*1865*value));
B6 = (amp*sin(2*pi*1976*value));

C7 = (amp*sin(2*pi*2093*value));
C7SHP = (amp*sin(2*pi*2217*value));
D7 = (amp*sin(2*pi*2349*value));
E7FLT = (amp*sin(2*pi*2489*value));
E7 = (amp*sin(2*pi*2637*value));
F7 = (amp*sin(2*pi*2794*value));
F7SHP = (amp*sin(2*pi*2960*value));
G7 = (amp*sin(2*pi*3136*value));

C8 = (amp*sin(2*pi*4186*value));
%Make sure to save as something else when done with song
%Remember: D flat is C sharp; D sharp is E flat; A sharp is B flat
x = [C3 D3 E3 F3 G3 A3 B3 C4 D4 E4 F4 G4 A4 B4 C5 D5 E5 F5 G5 A5 B5 C6 D6 E6 F6 G6 A6 B6 C7];
sound(x)




