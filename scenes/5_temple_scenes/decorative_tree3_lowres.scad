
color("RoyalBlue")
translate([0,0,11])
scale(1.0)
sphere(5,$fn=40);


color("RoyalBlue")
translate([0,0,30])
scale(0.5)
sphere(5,$fn=40);


color("RoyalBlue")
translate([0,0,22])
scale(0.75)
sphere(5,$fn=40);

color("Yellow")
cylinder(30, 0.6, 0.6, $fn=10);

difference()
{
color("Khaki")
cube([10,10,5],center=true);

translate([-2,-2,0])
cylinder(5, 0.8, 0.8, $fn=4,center=true);
translate([2,-2,0])
cylinder(5, 0.8, 0.8, $fn=4,center=true);
translate([-2,2,0])
cylinder(5, 0.8, 0.8, $fn=4,center=true);
translate([2,2,0])
cylinder(5, 0.8, 0.8, $fn=4,center=true);

translate([0,0,-0.5])
rotate([90,0,0])
{
  translate([-2,-1.5,0])
  cylinder(10, 0.8, 0.8, $fn=4,center=true);
  translate([2,-1.5,0])
  cylinder(10, 0.8, 0.8, $fn=4,center=true);
  translate([-2,1.5,0])
  cylinder(10, 0.8, 0.8, $fn=4,center=true);
  translate([2,1.5,0])
  cylinder(10, 0.8, 0.8, $fn=4,center=true);
}

translate([0,0,-0.5])
rotate([0,90,0])
{
  translate([-2,-1.5,0])
  cylinder(10, 0.8, 0.8, $fn=4,center=true);
  translate([2,-1.5,0])
  cylinder(10, 0.8, 0.8, $fn=4,center=true);
  translate([-2,1.5,0])
  cylinder(10, 0.8, 0.8, $fn=4,center=true);
  translate([2,1.5,0])
  cylinder(10, 0.8, 0.8, $fn=4,center=true);
}

}














