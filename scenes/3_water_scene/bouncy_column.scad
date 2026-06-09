
module bouncy_column() {
    
color("LightCyan",0.5)
translate([0,0,95])
sphere(9,$fn=50);

color("DodgerBlue")
translate([0,0,80])
cube([23,23,3],center=true);

color("Plum")
{
  translate([10, 10, 0]) 
  cylinder(84, 1, 1, $fn=10);
  translate([-10, 10, 0]) 
  cylinder(84, 1, 1, $fn=10);
  translate([10, -10, 0]) 
  cylinder(84, 1, 1, $fn=10);
  translate([-10, -10, 0]) 
  cylinder(84, 1, 1, $fn=10);
}

color("gold")
cylinder(80, 4, 4, $fn=20);

color("DodgerBlue")
translate([0,0,1.2])
cube([10,10,1],center=true);

color("DodgerBlue")
translate([0,0,-1])
cube([23,23,3],center=true);
}


