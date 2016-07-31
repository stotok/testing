settings.outformat="pdf";

import geometry;

size(4cm,0);

//coordsys R=currentcoordsys;
//point A=(1.5,3), B=(4,0);
//dot("$A$", A); dot("$B$", B);
//line l1=line(A,B);       draw(l1, linewidth(bp));
//line l2=rotate(-45,A)*l1; draw(l2, linewidth(bp));

coordsys R=currentcoordsys;
point A=(2,.6); //dot("$A$", A);
line l1=line(origin(R),A);   draw(l1, linewidth(bp));
line l2=rotate(60, origin(R)) * l1; draw(l2, linewidth(bp));
markangle("$a$", l1, l2, radius=markangleradius(), blue);

draw(box(origin(R), (3,4)), invisible);
//show(R);
