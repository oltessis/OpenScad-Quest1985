
//decorative_tree1();

module snub_tree() {
        
    color("wheat")
    translate([0,0,4])
    cylinder(1, 1, 0, $fn=15);
    color("SteelBlue")
    translate([0,0,3])
    cylinder(0.3, 1.6, 1.6, $fn=20);
    color("SteelBlue")
    translate([0, 0, 2])
    sphere(1.1,$fn=20);
    color("wheat")
    cylinder(4, 0.2, 0.2, $fn=10);
}
