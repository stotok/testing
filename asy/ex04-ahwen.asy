settings.outformat="pdf";

import geometry;

size(4cm,0);

coordsys R=currentcoordsys;
point A=(4,.6); //dot("$A$", A);
point B=(.1, .1); //dot("$B$", B);
line l1=line(B, false, A, false);   draw(l1, linewidth(bp));
real derajat = 60;  // 60 degrees rotation
line l2=rotate(derajat, B) * l1; draw(l2, linewidth(bp));
markangle("$a$", l1, l2, radius=markangleradius(), blue);

draw(box(origin(R), (4,4)), invisible);
//show("", R, xpen=invisible, ypen=invisible);
