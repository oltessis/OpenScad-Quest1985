
module _2dprobe1() {
    
circleThickness = 1;
radius = 2.8;

color("DarkGray")
translate([6,7,0])
cube([0.8,9,0.3],center=true);
color("DarkGray")
translate([-6,7,0])
cube([0.8,9,0.6],center=true);

color("DarkGray")
translate([3,2,0])
rotate([0,0,45])
cube([0.8,9,0.6],center=true);

color("DarkGray")
translate([-3,2,0])
rotate([0,0,-45])
cube([0.8,9,0.6],center=true);


translate([-6,0,0])
color("Black")
cylinder(circleThickness, radius, radius, $fn=20,center=true);
translate([6,0,0])
color("Black")
cylinder(circleThickness, radius, radius, $fn=20,center=true);

translate([-6,9,0])
color("Black")
cylinder(circleThickness, radius, radius, $fn=20,center=true);
translate([6,9,0])
color("Black")
cylinder(circleThickness, radius, radius, $fn=20,center=true);
translate([0,4.5,0])
color("Black")
cylinder(circleThickness, radius, radius, $fn=20,center=true);
}
















