
module short_bouncy_column() {
    
color("LightCyan",0.5)
translate([0,0,100])
sphere(9,$fn=50);

color("DodgerBlue")
translate([0,0,79.65])
cube([23,23,3.5],center=true);

color("PeachPuff")
translate([0,0,81.5])
difference()
{
cube([23,23,0.1],center=true);
cylinder(1,11.5,11.5,$fn=20,center=true);
}

color("PeachPuff")
translate([0,0,81.5])
difference()
{
union()
{
cube([16.2,16.2,0.1],center=true);
rotate([0,0,45])
cube([16.2,16.2,0.1],center=true);
}
cylinder(1,7,7,$fn=20,center=true);
}

color("PeachPuff")
translate([0,0,81.5])
cube([10,10,0.1],center=true);

color("Plum")
{
  translate([10, 10, 0]) 
  cylinder(80, 1, 1, $fn=10);
  translate([-10, 10, 0]) 
  cylinder(80, 1, 1, $fn=10);
  translate([10, -10, 0]) 
  cylinder(80, 1, 1, $fn=10);
  translate([-10, -10, 0]) 
  cylinder(80, 1, 1, $fn=10);
}

color("gold")
cylinder(80, 4, 4, $fn=20);

color("DodgerBlue")
translate([0,0,-1])
cube([23,23,3],center=true);

}
