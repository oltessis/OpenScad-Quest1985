
module sirpinski_structure() {
    
color("PaleTurquoise")
{
  rotate([0,0,45])
  translate([0, 0, 20]) 
  cylinder(10, 6.6, 0, $fn=4);
  // four corners
  translate([4.5, 4.5, 10]) 
  rotate([0,0,45])
  cylinder(10, 6.6, 0, $fn=4);
  translate([-4.5, 4.5, 10]) 
  rotate([0,0,45])
  cylinder(10, 6.6, 0, $fn=4);
  translate([4.5, -4.5, 10]) 
  rotate([0,0,45])
  cylinder(10, 6.6, 0, $fn=4);
  translate([-4.5, -4.5, 10]) 
  rotate([0,0,45])
  cylinder(10, 6.6, 0, $fn=4);
}

color("Blue")
difference()
{
rotate([0, 0, 45]) 
cylinder(30, 20, 0, $fn=4);
translate([0,0,18])
cube([40,40,25],center=true);
}

// four pillars
translate([15, 15, 0])
union()
{
translate([0,0,22.3])
rotate([45,45,45])
cube(2,center=true);
color("Blue")
translate([0,0,20])
cylinder(0.5,2,2,$fn=10);
cylinder(20, 1.2, 0.5, $fn=10);
}
translate([-15, 15, 0])
union()
{
translate([0,0,22.3])
rotate([45,45,45])
cube(2,center=true);
color("Blue")
translate([0,0,20])
cylinder(0.5,2,2,$fn=10);
cylinder(20, 1.2, 0.5, $fn=10);
}
translate([15, -15, 0])
union()
{
translate([0,0,22.3])
rotate([45,45,45])
cube(2,center=true);
color("Blue")
translate([0,0,20])
cylinder(0.5,2,2,$fn=10);
cylinder(20, 1.2, 0.5, $fn=10);
}
translate([-15, -15, 0])
union()
{
translate([0,0,22.3])
rotate([45,45,45])
cube(2,center=true);
color("Blue")
translate([0,0,20])
cylinder(0.5,2,2,$fn=10);
cylinder(20, 1.2, 0.5, $fn=10);
}
}

















