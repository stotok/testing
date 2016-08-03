//import plain;
import graph3;
//import palette;

//defaultrender.merge=true;  // Fast low-quality rendering
defaultrender.merge=false; // Slow high-quality rendering
real width=10*linewidth(currentpen);

pen good_pen=blue;
pen bad_pen=red;

size(200);
//currentprojection=perspective(30,30,15);

string filename="Save_h15_Xi500";
string prefix=filename;
file in_good=input(filename+"Good_Xi.txt");
file in_bad=input(filename+"Bad_Xi.txt");


real[][] data_good = in_good.dimension(0,3);
write(data_good.length);  
real[][] data_bad = in_bad.dimension(0,3);
write(data_bad.length);  

for(int i=0; i < data_good.length; ++i )
    {
	pixel( (data_good[i][0], data_good[i][1], data_good[i][2]), good_pen, width);
	}
	
for(int i=0; i < data_bad.length; ++i )
    {
	pixel( (data_bad[i][0], data_bad[i][1], data_bad[i][2]), bad_pen, width);
	}
	
triple m=currentpicture.userMin();
triple M=currentpicture.userMax();
triple target=0.5*(m+M);

xaxis3("$x$",Bounds,InTicks);
yaxis3("$y$",Bounds,InTicks);
zaxis3("$z$",Bounds,InTicks);

currentprojection=perspective(camera=target+realmult(dir(68,225),M-m),
                              target=target);
							  
string options;
string viewfilename=prefix+".views";

if(!error(input(viewfilename,check=false)))
  options="3Dviews="+viewfilename;

shipout(prefix,options=options);