
circleThickness = 1;
radius = 2.5;


color("DarkGray")
translate([0,0,0])
rotate([0,0,90])
cube([0.8,9,0.6],center=true);

color("DarkGray")
translate([-3.1,3.1,0])
rotate([0,0,45])
cube([0.8,9,0.6],center=true);
color("DarkGray")
translate([3.1,3.1,0])
rotate([0,0,-45])
cube([0.8,9,0.6],center=true);




translate([-6,0,0])
color("Black")
cylinder(circleThickness, radius, radius, $fn=20,center=true);
translate([6,0,0])
color("Black")
cylinder(circleThickness, radius, radius, $fn=20,center=true);

translate([-7,7,0])
color("Black")
cylinder(circleThickness, radius, radius, $fn=20,center=true);
translate([7,7,0])
color("Black")
cylinder(circleThickness, radius, radius, $fn=20,center=true);

















