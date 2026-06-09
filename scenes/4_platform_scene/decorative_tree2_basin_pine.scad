

module decorative_tree2() {
    
color("Yellow",0.5)
translate([0,0,5])
sphere(0.8,$fn=20);

color("LightGreen")
translate([0,0,3.3])
cylinder(0.5, 1, 1, $fn=20);

color("MediumSeaGreen")
translate([0,0,2.2])
cylinder(0.5, 1.4, 1.4, $fn=20);

color("DarkGreen")
translate([0,0,1])
cylinder(0.5, 2, 2, $fn=20);

color("Orange")
translate([0,0,-1])
cylinder(6, 0.3, 0.3, $fn=10);
}





