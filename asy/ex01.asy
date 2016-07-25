settings.outformat="pdf";

unitsize(5cm);

real xmin = -0.1;
real xmax = 2;
real ymin = -0.1;
real ymax = 2;

path s = (0,0){up} .. (1,1) .. (xmax,sqrt(xmax));
fill(s -- (xmax,0) -- cycle, mediumgray);
draw(s);

arrowbar axisarrow = Arrow(TeXHead);
draw((xmin,0) -- (xmax,0), arrow=axisarrow);
draw((0,ymin) -- (0,ymax), arrow=axisarrow);

real x = 1.4;
real dx = .05;
real t0 = times(s,x)[0];
real t1 = times(s,x+dx)[0];
path striptop = subpath(s, t0, t1);
draw((x,0) -- striptop -- (x+dx,0) -- cycle, blue);

//clip(box((1, ymin), (1.6,1.5)));

/////////////////////////

//size(4cm);
//draw(circle((0,1), 0.5), red);
//draw(circle((1,0), 1.5), blue);
//draw(ellipse((1,0), 1.5, 0.5));

//unitsize(1.5cm);
//draw(unitcircle);
//draw(polygon(7), blue);

//size(5cm);
//for (int n = 3; n <= 7; ++n) {
//  draw(shift(2.2*n, 0) * polygon(n));
//}

//size(2cm,0);
//draw((3,0)--(0,0)--(0,4));
//draw((2,1)-- arc((2,1), 2, 60, 80)--cycle);

//size(3cm,0);
//draw((-1.2,0)--(1.2,0));
//draw((0,-1.2)--(0,1.2));
//// an arc from 270 to 0 goes clocksize
//draw(arc((0,0), r=1, angle1=270, angle2=0), arrow=Arrow(TeXHead));

//size(3cm,0);
//draw((-1.2,0)--(1.2,0));
//draw((0,-1.2)--(0,1.2));
//// an arc from -90 to 0 goes counterclocksize. the same effect could be
//// achieved by drawing an arc from 270 to 360
//draw(arc((0,0), r=1, angle1=-90, angle2=0), arrow=Arrow(TeXHead));

//size(3cm,0);
//draw((3,0)--(0,0)--(3,4));
//draw(arc((0,0), (2,0), (3,4)), arrow=Arrow(TeXHead), red);
//draw(arc((0,0), (2,0), (3,4), direction=CW), arrow=Arrow(TeXHead), blue);
//dot((0,0)); dot((2,0)); dot((3,4));

//size(5cm,5cm, keepAspect=false);
//draw((0,0) -- (50,0), arrow=Arrow(TeXHead));
//draw((0,0) -- (0,10), arrow=Arrow(TeXHead));
//real r = 0.5;
////fill(circle((2,1),r));
//dot((2,1), green);
////fill(circle((35,8),r));
//dot((35,8), blue);
////fill(circle((42,9),r));
//dot((42,9), red);

//size(2cm);
//path thebox = box((0,0),(1,1));
//fill(thebox, blue);
//draw(shift(.5,.5) * thebox, green+linewidth(5pt));
//clip(thebox);
//draw(shift(-.5,-.5) * thebox, red+linewidth(5pt));

//size(4cm,0);
//
//path p = (-2,0) .. (0,7/4) .. (6/4,0) .. (0,-5/4) .. (-4/4,0) .. (0,3/4) .. (2/4,0)
//  .. (0,-1/4) .. (0,0);
//draw(p, arrow=ArcArrow(TeXHead, position=.5));
//
//real[] isections = times(p, 1/3);
//
//draw(subpath(p, isections[0], isections[1]), blue+linewidth(.8), arrow=MidArcArrow(TeXHead));
//draw(subpath(p, isections[2], isections[3]), red+linewidth(.8), arrow=MidArcArrow(TeXHead));
//draw((1/3,-1.5) -- (1/3,2), gray+linewidth(.2));
