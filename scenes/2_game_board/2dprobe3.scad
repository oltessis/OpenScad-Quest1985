

module _2dprobe3() {
    
circleThickness = 1;
radius = 2.5;


for (i = [0:120:360]) {
    
color("DarkGray")
rotate([0,0,i])
translate([4,0,0])
cube([0.8,9,0.6],center=true);
}

color("DarkGray")
rotate([0,0,i])
translate([1.5,0,0])
cube([5,0.8,0.6],center=true);



for (i = [0:120:360]) {
rotate([0,0,i])   
translate([-8,0,0])
color("Black")
cylinder(circleThickness, radius, radius, $fn=20,center=true);
}


rotate([0,0,0])   
translate([-1.5,0,0])
color("Black")
cylinder(circleThickness, radius, radius, $fn=20,center=true);
}











