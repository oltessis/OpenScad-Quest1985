
module temple_sanctum_column2() {
    
color("LightCyan",0.5)
translate([0,0,21])
rotate([45,45,45])
cube(3,center=true);

color("Yellow")
translate([0,0,18])
cube([6,6,0.5],center=true);

color("LightCyan",0.5)
translate([0, 0, 9]) 
cube([3, 3, 18], center=true);

color("khaki")
cube([6,6,0.5],center=true);

color("DodgerBlue")
translate([0,0,-3])
cylinder(3, 0, 1.5, $fn=15);

color("DarkOrange")
translate([0,0,-3.6])
sphere(0.6,$fn=15);
}




