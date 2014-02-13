dm 'log;clear;output;clear';

ods rtf file="dinosaur.rtf";

data dinosaur;
input y deposit $ depth $;
datalines;
75 lime 345
200 lime 345
120 lime 346
310 lime 346
290 lime 347
450 lime 347
620 lime 347
170 lime 348
205 lime 348
260 lime 348
120 lime 349
135 lime 349
5 lime 350
90 lime 350
105 lime 350
110 shale 345
501 shale 345
315 shale 346
710 shale 347
875 shale 347
400 shale 348
120 shale 349
130 shale 349
135 shale 349
150 shale 349
290 shale 349
145 shale 350
215 shale 350
run;

proc glm data=dinosaur;
class deposit depth;
model y = deposit|depth / ss1 ss2 ss3;
run;

proc glm data=dinosaur;
class deposit depth;
model y=depth|deposit / ss1 ss2 ss3;
run;

ods rtf close;
