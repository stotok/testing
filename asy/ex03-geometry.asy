settings.outformat="pdf";

import geometry;

// 1.2 internal running
//size(3cm,0);
//circle cle1=circle((point)(0,0), 1);
//circle cle2=circle((point)(sqrt(2),sqrt(2)), 1);
//draw(cle1); draw(cle2);
//dot(intersectionpoints(cle1, cle2));

// 2.1 the type coordsys
//size(4cm,0);
//show(defaultcoordsys);
//show("$O'$", shift((1,1)) * currentcoordsys);

// 2.2 how to define a coord system
//size(4cm,0);
//coordsys R=cartesiansystem((2,1), i=(1,1), j=(-1,1));
//show("$O'$",  "$\vec{u}$",  "$\vec{v}$",  R, xpen=invisible);
//show("$O''$", "$\vec{u'}$", "$\vec{v'}$", rotate(90)*R, xpen=invisible);
//show(defaultcoordsys);

// 2.3 changing an object pair on coordinate system
// pair operator *
//size(4cm,0);
//coordsys R = cartesiansystem((2,1), i=(1,1), j=(-1,1));
//pair M=R*(.5,.5);
//dot("", M);
//show(defaultcoordsys);
//show(R, xpen=invisible);

// pair operator /
//size(4cm,0);
//coordsys R = cartesiansystem((2,1), i=(1,1), j=(-1,1));
//coordsys Rp= cartesiansystem((-2,-1), i=(-1,1), j=(-1,-1));
//pair M=R*(1,1);
//dot("$M$", M);
//pair P=Rp*(M/R);
//dot("$P$", P);
//
////show(defaultcoordsys);
//show(R, xpen=invisible);
//show("$O'$", "$\vec{u}$", "$\vec{v}$",  Rp, xpen=invisible);

// 3.1.1 basic principles
//size(4cm,0);
//show(currentcoordsys, xpen=invisible);
//pair M=(1,1); dot("$M$", M, W, linewidth(2mm));
//point P=(1,1); dot("$P$", P, E, red);

// 3.1.1 basic principles
//size(6cm,0);
//currentcoordsys=cartesiansystem((3,0), i=(1,1), j=(-1,1));
//show("$O_1$", "$\vec{u_1}$", "$\vec{v_1}$", currentcoordsys, xpen=invisible);
//point A=(1,1); // at current coordinate system
//dot("$A$", A);
//
//coordsys Rp=rotate(90)*currentcoordsys;
//show("$O_2$", "$\vec{u_2}$", "$\vec{u_2}$", Rp, xpen=invisible);
//point B = point(Rp, (1,1));
//dot("$B$", B);
//
//show(defaultcoordsys);


// 3.1.1 basic principles
//size(4cm,0);
//currentcoordsys = cartesiansystem((3,0), (1,0), (1,2));
//show("", currentcoordsys);
//
//point A = (1,1);
//dot("$A$", A); draw(locate(0)--A);
//draw(locate((1,0))--A, dashed);
//draw(locate((0,1))--A, dashed);
//
////show(defaultcoordsys);

// 3.1.1 basic principles
//size(4cm,0);
//coordsys R = cartesiansystem((1,2), i=(1,.5), j=(-1,1));
//show(R);
//
//for (int i=0; i < 360; i+=10) {
//  pen p=(i/360)*red;
//  dot(point(R, R.polar(1,radians(i))), p);
// }
//
//point A=point(R, R.polar(1,radians(40)));
//draw((string)abs(A), R.O--A);

// 6.1.4 lines and angles
size(5cm,0);
coordsys R=cartesiansystem((1,-2), i=(1,.5), j=(-1,1));
show("$O_{1}$", "$\vec{u}$", "$\vec{v}$", R);

show(defaultcoordsys);
