
module frontal_building() {
    
for (i = [0:36:360]) {
    
  rotate([0,0,i])
  translate([8, 0, 0])
  union()
  {
    color("Silver")
    translate([0,0,5.2])
    cylinder(1.5, 0.6, 0.6, $fn=12);

    color("Coral")
    translate([0,0,5.7])
    cylinder(0.2, 1.4, 1.4, $fn=20);

    color("PeachPuff")
    cylinder(5.2, 0.6, 0.6, $fn=12);

    color("Silver")
    translate([0,0,-1.5])
    cylinder(1.5, 0, 0.6, $fn=12);

    color("PeachPuff")
    translate([0,0,-1.8])
    sphere(0.2,$fn=12);
  }
}

for (i = [0:36:360]) { 
  color("DarkGrey")
  rotate([0,0,i])
  translate([6, 0, 7.5])
  sphere(0.6,$fn=12);
}

color("Khaki")
translate([0,0,-1])
cylinder(7, 6, 6, $fn=40);

color("DodgerBlue")
translate([0,0,9])
sphere(5.5,$fn=50);

color("yellow")
translate([0,0,9.5])
minkowski() {
    
  difference() {
      cylinder(0.1, 6.5, 6.5, $fn=50);
      translate([0,0,-0.1])
      cylinder(0.6,6.45,6.45,$fn=50);
  }
  sphere(0.15);
}

color("Gray")
translate([0,0,-2.4])
cylinder(0.2, 9, 9, $fn=60);

color("khaki")
translate([0,0,-2.5])
cylinder(0.2, 10, 10, $fn=60);

}
