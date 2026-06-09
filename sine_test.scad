
for(i=[0:1:360]){
    translate([0,i,0])
    cube([1,1,sin($t)],center=true);
}


