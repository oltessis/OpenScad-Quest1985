

module temple_sanctum_column() {
    
scale(4) 
{
color("PowderBlue",0.5)
translate([0,0,6.4-1.4])
sphere(0.45,$fn=40);

// triangles
color("PowderBlue",0.5)
{
translate([0.3,0.3,5.9-1.4])
rotate([0,0,45])
cylinder(0.11, 0.07, 0, $fn=4,center=true);
translate([-0.3,0.3,5.9-1.4])
rotate([0,0,45])
cylinder(0.11, 0.07, 0, $fn=4,center=true);
translate([0.3,-0.3,5.9-1.4])
rotate([0,0,45])
cylinder(0.11, 0.07, 0, $fn=4,center=true);
translate([-0.3,-0.3,5.9-1.4])
rotate([0,0,45])
cylinder(0.11, 0.07, 0, $fn=4,center=true);
}
// yellow triangle bases 
color("Yellow")
{
translate([0.3,0.3,5.81-1.4])
cylinder(0.04, 0.08, 0.08, $fn=12,center=true);
translate([-0.3,0.3,5.81-1.4])
cylinder(0.04, 0.08, 0.08, $fn=12,center=true);
translate([0.3,-0.3,5.81-1.4])
cylinder(0.04, 0.08, 0.08, $fn=12,center=true);
translate([-0.3,-0.3,5.81-1.4])
cylinder(0.04, 0.08, 0.08, $fn=12,center=true);
}

// orange triangle bases
color("OrangeRed")
{
translate([0.3,0.3,5.78-1.4])
cylinder(0.04, 0.1, 0.1, $fn=12,center=true);
translate([-0.3,0.3,5.78-1.4])
cylinder(0.04, 0.1, 0.1, $fn=12,center=true);
translate([0.3,-0.3,5.78-1.4])
cylinder(0.04, 0.1, 0.1, $fn=12,center=true);
translate([-0.3,-0.3,5.78-1.4])
cylinder(0.04, 0.1, 0.1, $fn=12,center=true);
}

color("CornflowerBlue")
translate([0,0,5.74-1.4])
cube([1, 1, 0.04], center=true);

color("LightBlue")
translate([0,0,5.7-1.4])
cube([0.8, 0.8, 0.04], center=true);

color("CornflowerBlue")
translate([0,0,5.66-1.4])
cube([0.6, 0.6, 0.04], center=true);

color("DodgerBlue")
translate([0,0,2.5])
cylinder(3.7, 0.15, 0.15, $fn=12,center=true);

color("Yellow")
rotate([0,0,45])
translate([0,0,0.5])
cylinder(1, 0.4, 0, $fn=4,center=true);

color("LightSkyBlue")
{
// four side-columns
translate([0.3,0.3,2.5])
cylinder(3.7,0.04,0.04,center=true,$fn=10);

translate([-0.3,0.3,2.5])
cylinder(3.7,0.04,0.04,center=true,$fn=10);

translate([0.3,-0.3,2.5])
cylinder(3.7,0.04,0.04,center=true,$fn=10);

translate([-0.3,-0.3,2.5])
cylinder(3.7,0.04,0.04,center=true,$fn=10);
}

color("SkyBlue")
translate([0,0,0.73])
cube([0.45, 0.45, 0.04], center=true);

color("Yellow")
translate([0,0,0.5])
cube([0.8, 0.8, 0.04], center=true);

// small orange in-betweens
color("DarkOrange")
{
translate([0.3,0.3,0.6])
cylinder(0.2,0.06,0.06,center=true,$fn=10);

translate([-0.3,0.3,0.6])
cylinder(0.2,0.06,0.06,center=true,$fn=10);

translate([0.3,-0.3,0.6])
cylinder(0.2,0.06,0.06,center=true,$fn=10);

translate([-0.3,-0.3,0.6])
cylinder(0.2,0.06,0.06,center=true,$fn=10);
}

color("Yellow")
translate([0,0,0.7])
cube([0.8, 0.8, 0.04], center=true);

color("PaleGreen")
translate([0,0,0])
cube([0.62, 0.62, 0.04], center=true);

color("LightSkyBlue")
translate([0,0,-0.05])
cube([0.9, 0.9, 0.04], center=true);
}
}
