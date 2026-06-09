
module rotating_pyramid() {
    
color("orange")
translate([0,0,24])
sphere(1.3,$fn=20);

color("Yellow")
translate([0,0,24])
rotate([0,90,0])
difference() {
    cylinder(1, 2, 2, $fn=18,center=true);
    cylinder(1.2, 1.8, 1.8, $fn=18,center=true);
}

// lens 
color("LightCyan",0.2)
translate([-11.5,-11,15.5])
rotate([90,0,0])
cylinder(1, 1.5, 1.5, $fn=16);

color("LightCyan",0.2)
translate([11.5,12,15.5])
rotate([90,0,0])
cylinder(1, 1.5, 1.5, $fn=16);

// fronds
translate([11.5,-11.5,14])
color("DarkSlateGray")
for (i = [0:1:30]) {

  rotate([
        rands(-50, 50, 1, i*2)[0],   // Small tilt in X
        rands(-50, 50, 1, i*2+1)[0], // Small tilt in Y
        rands(0, 360, 1, i)[0]       // Full rotation around Z
    ])
  union()
  {
  translate([0,0,4])
  sphere(0.3);
  cylinder(4,0.1,0.1);
  }
}

translate([-11.5,11.5,14])
color("DarkSlateGray")
for (i = [0:1:30]) {

  rotate([
        rands(-50, 50, 1, i*2)[0],   // Small tilt in X
        rands(-50, 50, 1, i*2+1)[0], // Small tilt in Y
        rands(0, 360, 1, i)[0]       // Full rotation around Z
    ])
  union()
  {
  translate([0,0,4])
  sphere(0.3);
  cylinder(4,0.1,0.1);
  }
}



// pyramid 
color("LightCyan",0.4)
rotate([0,0,45])
cylinder(21, 13, 0, $fn=4);

color("LightSalmon")
cube([19,19,0.3],center=true);



translate([11.5,11.5,0])
scale(0.65)
union()
{

color("LightSalmon")
{
  translate([0,0,21])
  cube([6,6,0.2],center=true);
  translate([0,0,17])
  cube([6,6,0.2],center=true);
  translate([0,0,16])
  cube([6,6,0.2],center=true);
  translate([0,0,15])
  cube([6,6,0.2],center=true);
}

color("seaGreen")
translate([0,0,3])
cylinder(18, 0, 1.3, $fn=16);

color("Yellow")
translate([0,0,3.5])
sphere(0.5,$fn=18);

color("Yellow")
difference()
{
rotate([0,0,45])
cylinder(6, 4, 0, $fn=4);
translate([0,0,5])
cube([4,4,4],center=true);
}
color("Yellow")
cube([6,6,0.2],center=true);
}



translate([11.5,-11.5,0])
scale(0.65)
union()
{

color("LightSalmon")
{
  translate([0,0,21])
  cube([6,6,0.2],center=true);
  translate([0,0,17])
  cube([6,6,0.2],center=true);
  translate([0,0,16])
  cube([6,6,0.2],center=true);
  translate([0,0,15])
  cube([6,6,0.2],center=true);
}

color("seaGreen")
translate([0,0,3])
cylinder(18, 0, 1.3, $fn=16);

color("Yellow")
translate([0,0,3.5])
sphere(0.5,$fn=18);

color("Yellow")
difference()
{
rotate([0,0,45])
cylinder(6, 4, 0, $fn=4);
translate([0,0,5])
cube([4,4,4],center=true);
}
color("Yellow")
cube([6,6,0.2],center=true);
}



translate([-11.5,11.5,0])
scale(0.65)
union()
{

color("LightSalmon")
{
  translate([0,0,21])
  cube([6,6,0.2],center=true);
  translate([0,0,17])
  cube([6,6,0.2],center=true);
  translate([0,0,16])
  cube([6,6,0.2],center=true);
  translate([0,0,15])
  cube([6,6,0.2],center=true);
}

color("seaGreen")
translate([0,0,3])
cylinder(18, 0, 1.3, $fn=16);

color("Yellow")
translate([0,0,3.5])
sphere(0.5,$fn=18);

color("Yellow")
difference()
{
rotate([0,0,45])
cylinder(6, 4, 0, $fn=4);
translate([0,0,5])
cube([4,4,4],center=true);
}
color("Yellow")
cube([6,6,0.2],center=true);
}



translate([-11.5,-11.5,0])
scale(0.65)
union()
{

color("LightSalmon")
{
  translate([0,0,21])
  cube([6,6,0.2],center=true);
  translate([0,0,17])
  cube([6,6,0.2],center=true);
  translate([0,0,16])
  cube([6,6,0.2],center=true);
  translate([0,0,15])
  cube([6,6,0.2],center=true);
}

color("seaGreen")
translate([0,0,3])
cylinder(18, 0, 1.3, $fn=16);

color("Yellow")
translate([0,0,3.5])
sphere(0.5,$fn=18);

color("Yellow")
difference()
{
rotate([0,0,45])
cylinder(6, 4, 0, $fn=4);
translate([0,0,5])
cube([4,4,4],center=true);
}
color("Yellow")
cube([6,6,0.2],center=true);
}
}
