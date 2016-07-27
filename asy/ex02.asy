settings.outformat="pdf";

unitsize(1cm);
import geometry;
dotfactor *= 1.5;
linemargin = 5mm;

//currentcoordsys = cartesiansystem((2,1), i=(1,0.5), j=(-1,1));
show(currentcoordsys);

point A=(-3,-1), B=(3,4);
line l1=line(A,B);

draw(l1,red);
dot("$A$", A, SE);
dot("$B$", B, NW);

point M=(2,-2);
dot("$M$", M);

draw(parallel(M, l1), red);

line perp=perpendicular(M, l1);
draw(perp);

point interp=intersectionpoint(l1,perp);
dot(interp, green);

markrightangle(l1.A, interp, rotate(180, interp) * M, size=5mm);

draw(box((-5,-5), (5,5)), invisible);
