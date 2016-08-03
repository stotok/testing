settings.outformat="pdf";

import geometry;


// ************************************************************
//size(4cm,0);
//coordsys R=currentcoordsys;
//point A=(4,.6); //dot("$A$", A);
//point B=(.1, .1); dot("$$", B);
//line l1=line(B, false, A, false);   draw(l1, linewidth(bp));
//real derajat = 60;  // 60 degrees rotation
//line l2=rotate(derajat, B) * l1; draw(l2, linewidth(bp));
//markangle("$a$", l1, l2, radius=markangleradius(), blue);
//

// *************************************************************
//size(4cm,0);
//point A=(-0.5,-1);    //dot("$A$", A);
//point B=(-0.1,-0.2);   dot("$$", B);
//line l1=line(B, false, A, false);  draw(l1);
//line l2=rotate(70, B) * l1;  draw(l2);
//markangle("$b$", l1, l2, radius=markangleradius(), blue);
//

// *************************************************************
//size(4cm,0);
//point A=(-1,.2);   //dot("$A$", A);
//point B=(0,0);     dot("$$", B);
//line l1=line(A, false, B, false); draw(l1);
//line l2=rotate(-120, B) * l1;     draw(l2);
//markangle("$c$", reverse(l2), reverse(l1), radius=markangleradius(), blue);

// ************************************************************
//size(4cm,0);
//point A=(0,0);   dot("$$", A);
//point B=(-3,-1);
//line l1=line(A, false, B, false);  draw(l1);
//line l2=rotate(50, A) * l1; draw(l2);
//markangle("$d$", l1, l2, radius=markangleradius());

// *************************************************************
//size(4cm,0);
//point A=(1,.5);
//point B=(4,1);
//line l1=line(A, false, B, false); draw(l1);
//line l2=rotate(60, A) * l1;       draw(l2);
//point C=rotate(90, A) * B;
//line l3=line(A, false, C, false); draw(l3);
//markangle("$60^\circ$", l1, l2, radius=0.8*markangleradius());
//markangle("$x$", l2, l3, radius=1.2*markangleradius());
//markrightangle(B, A, C);

// *************************************************************
size(5cm,0);
dotfactor*=0;                   // no draw for the "dot" point
point C=(0,.5); dot("$C$", C, W);
point D=(4,3);  dot("$D$", D);
line l1=line(C, false, D, false); draw(l1);
point Z=midpoint(l1);
point B=rotate(100, Z)*C; dot("$B$", B);
point A=rotate(180, Z)*B; dot("$A$", A, NW);
line l2=line(B, false, A, false); draw(l2);
//
markangle("$100^\circ$", reverse(l1), reverse(l2), radius=.7*markangleradius());
markangle("$80^\circ$", l2, l1, radius=markangleradius());
markangle("$w$", l1, l2, radius=.7*markangleradius());
markangle("$z$", reverse(l2), reverse(l1), radius=markangleradius());
