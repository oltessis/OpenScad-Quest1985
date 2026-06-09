
module temple_lantern() {
    
color("Yellow",0.5)
translate([0,0,14.1])
scale([1,1,1.5])
sphere(1.3,$fn=20);
color("Orange")
translate([0, 0, 12]) 
cylinder(0.25, 4, 4, $fn=15);
color("Orange")
translate([0, 0, 10.5]) 
cylinder(0.25, 4, 4, $fn=15);
color("Orange")
translate([0, 0, 9]) 
cylinder(0.25, 4, 4, $fn=15);
color("Yellow")
cylinder(13, 0.5, 0.5, $fn=10);
color("DarkSlateGray")
translate([0,0,1])
cylinder(5, 3, 3, $fn=18);
}
