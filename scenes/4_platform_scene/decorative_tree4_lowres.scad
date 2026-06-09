// decorative tree 4

module decorative_tree4_lowres() {
    
color("RoyalBlue")
translate([0,0,11])
scale(1.0)
sphere(5,$fn=40);

color("RoyalBlue")
translate([0,0,10])
cylinder(h=10, r1=0.8, r2=0.8, $fn=8);

color("RoyalBlue")
translate([0,0,18])
cylinder(h=0.2, r1=2.6, r2=2.6, $fn=15);

color("RoyalBlue")
translate([0,0,16.2])
cylinder(h=0.2, r1=2.6, r2=2.6, $fn=15);

color("wheat")
translate([0,0,3])
cylinder(h=10, r1=0.8, r2=0.8, $fn=8);

color("wheat")
translate([0,0,19])
cylinder(h=4.5, r1=2.6, r2=0.1, $fn=20);
}






