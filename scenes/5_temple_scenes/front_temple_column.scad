
module front_temple_column() {
    
color("LightSteelBlue")
rotate([0, 0, 45])
translate([0, 0, -4]) 
cylinder(8, 6, 0, $fn=4);

color("LightPink")
cube([8, 8, 1.2], center=true);

color("Yellow")
translate([0, 0, 15.5]) 
cube([9, 9, 0.8], center=true);

color("Yellow")
translate([0, 0, 17.3]) 
cube([9, 9, 0.8], center=true);

color("Yellow")
translate([0, 0, 19.1]) 
cube([9, 9, 0.8], center=true);

color("Gold")
translate([0, 0, 21]) 
cube([7, 8, 0.8], center=true);

color("CornflowerBlue")
translate([0, 0, 12.5]) 
cylinder(25, 2.3, 2.3, $fn=16,center=true);

color("LightPink")
translate([0, 0, 16])
cylinder(10, 0, 4, $fn=25);

color("DarkSeaGreen")
for (i = [0:90:360]) {
  rotate([0,0,i])
  translate([3.4,0,27])
  sphere(1, $fn=20);
    
}

color("DodgerBlue")
rotate([0, 0, 45])
translate([0, 0, 28]) 
cylinder(5, 5, 0, $fn=4);
}


