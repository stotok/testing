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
//size(5cm,0);
//dotfactor*=0;                   // no draw for the "dot" point
//point C=(0,.5); dot("$C$", C, W);
//point D=(4,3);  dot("$D$", D);
//line l1=line(C, false, D, false); draw(l1);
//point Z=midpoint(l1);
//point B=rotate(100, Z)*C; dot("$B$", B);
//point A=rotate(180, Z)*B; dot("$A$", A, NW);
//line l2=line(B, false, A, false); draw(l2);
////
//markangle("$100^\circ$", reverse(l1), reverse(l2), radius=.7*markangleradius());
//markangle("$80^\circ$", l2, l1, radius=markangleradius());
//markangle("$w$", l1, l2, radius=.7*markangleradius());
//markangle("$z$", reverse(l2), reverse(l1), radius=markangleradius());

// **************************************************************
//size(5cm,0);
//dotfactor*=0;                   // no need to draw the "dot" at point
//point A=(0,0); dot("$A$", A, NW);
//point B=(4,-3); dot("$B$", B, SE);
//line lAB=line(A, false, B, false); draw(lAB);
//point M=midpoint(lAB);
////
//point B1=rotate(-45, M) * B; //dot("$B1$", B1);
//line lMB1=line(M, false, B1, false); draw(lMB1);
//markangle("$45^\circ$", lMB1, lAB, radius=0.6*markangleradius());
////
//point A1=rotate(110, M) * A; //dot("$A1$", A1);
//line lMA1=line(M, false, A1, false); draw(lMA1);
//markangle("$110^\circ$", reverse(lAB), lMA1, radius=0.4*markangleradius());
////
//markangle("$y$", lMA1, lMB1, radius=markangleradius());

// ***************************************************************
//size(5cm,0);
//dotfactor*=0;
//point A=(0,0); point B=(.2,-3);
//line lAB=line(A, false, B, false); draw(lAB);
//line lAC=rotate(90, A) * lAB; draw(lAC);
//markrightangle(B, A, rotate(90, A) * B);
//line lAD=rotate(70, A) * lAC; draw(lAD);
//markangle("$70^\circ$", lAC, lAD, radius=0.5*markangleradius());
//line lAE=rotate(40, A) * lAD; draw(lAE);
//markangle("$d$", lAD, lAE, radius=0.7*markangleradius());
//line lAF=rotate(30, A) * lAE; draw(lAF);
//markangle("$30^\circ$", lAE, lAF, radius=1.2*markangleradius());
//markangle("$e$", lAF, lAB, radius=0.8*markangleradius());

// ***************************************************************
// use this is as the best example
//size(5cm,0);
//dotfactor*=0;
//point A=(0,0); dot("$A$", A, NW);
//point B=(3,-4); dot("$B$", B, SE);
//line lAB=line(A, false, B, false);
//point M=midpoint(lAB);
//line lMA=line(M, false, A, false); draw(lMA);
////
//line lMI=rotate(20, M) * lMA; draw(lMI);
//markangle("$i$", lMA, lMI, radius=markangleradius());
////
//line lMJ=rotate(15, M) * lMI; draw(lMJ);
//markangle("$j$", lMI, lMJ, radius=1.7*markangleradius());
////
//line lM100=rotate(100, M) * lMJ; draw(lM100);
//markangle("$100^\circ$", lMJ, lM100, radius=0.4*markangleradius());
////
//line lMG=rotate(27, M) * lM100; draw(lMG);
//markangle("$g$", lM100, lMG, radius=markangleradius());
////
//line lMB=line(M, false, B, false); draw(lMB);
//markangle("$h$", lMG, lMB, radius=1.2*markangleradius());

// **********************************
//size(5cm,0);
//dotfactor*=0;
//point M=(0,0); point A=(-3,2);
//line lMA=line(M, false, A, false); draw(lMA);
//point B=rotate(90,M)*A;
//line lMB=line(M, false, B, false); draw(lMB);
//markrightangle(A, M, B);
////
//line lMC=rotate(58,M)*lMB; draw(lMC);
//markangle("$58^\circ$", lMB, lMC, radius=markangleradius());
////
//line lMD=rotate(106,M)*lMC; draw(lMD);
//markangle("$s$", lMC, lMD, radius=0.5*markangleradius());
//markangle("$s$", lMD, lMA, radius=0.7*markangleradius());

// **************************************
//size(6cm,0);
//dotfactor*=0;
//point A=(-3,1); dot("$A$", A, NE);
//point B=(3,-1); dot("$B$", B, NE);
//point M=midpoint(line(A, false, B, false));
//line lMB=line(M, false, B, false); draw(lMB);
//line lMA=line(M, false, A, false); draw(lMA);
//point B1=rotate(-53,M)*B;
//line lB1=line(M, false, B1, false); draw(lB1);
//point B2=rotate(90,M)*B1;
//line lB2=line(M, false, B2, false); draw(lB2);
//markrightangle(B1,M,B2);
//markangle("$53^\circ$", lB1, lMB, radius=markangleradius());
//markangle("$q$", lB2, lMA, radius=0.6*markangleradius());

// *****************************************
//size(5cm,0);
//dotfactor*=0;
//point A=(-3,1); dot("$A$", A, W);
//point B=(5,-0.5); dot("$B$", B, E);
//line lAB=line(A, false, B, false); point M=midpoint(lAB);
//line lMB=line(M, false, B, false); draw(lMB);
//line lMA=line(M, false, A, false); draw(lMA);
//point D=scale(0.8, M)*(rotate(45,M)*B); dot("$D$", D, NE);
//line lMD=line(M, false, D, false); draw(lMD);
//markangle("$45^\circ$", lMB, lMD, radius=markangleradius());
//point E=scale(0.8, M)*(rotate(-78,M)*A); dot("$E$", E, N);
//line lME=line(M, false, E, false); draw(lME);
//markangle("$78^\circ$", lME, lMA, radius=markangleradius());
//point C=rotate(180,M)*D; dot("$C$", C, SW);
//line lMC=line(M, false, C, false); draw(lMC);
//point F=rotate(180,M)*E; dot("$F$", F, S);
//line lMF=line(M, false, F, false); draw(lMF);
//markangle("$p$", lMC, lMF, radius=markangleradius());

// **********************
// **********************
size(5cm,0);
real k=0.6;
point B=(0,0); point C=(4,1);
line lBC=line(B, false, C, false); draw(lBC);
point D=scale(k, C)*(rotate(-85,C)*B);
line lCD=line(C, false, D, false); draw(lCD);
line l1=parallel(D, lBC);
line l2=parallel(B, lCD);
point A=intersectionpoint(l1, l2);
line lAB=line(A, false, B, false); draw(reverse(lAB), arrow=MidArrow(TeXHead));
line lAD=line(A, false, D, false); draw(lAD, marker=StickIntervalMarker());
markangle("$85^\circ$", lCD, reverse(lBC), radius=0.6*markangleradius());
markangle("$a$", lAB, lAD, radius=0.6*markangleradius());
markangle("$b$", lBC, reverse(lAB), radius=0.6*markangleradius());
//dot("$B$", B, SW); dot("$C$", C, SE); dot("$D$", D, NE); dot("$A$", A, NW);
