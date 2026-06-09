
module outer_dome() {
    
color("Khaki")
difference()
{
sphere(10,$fn=30);

translate([7,7,0])
cube([7,7,20],center=true);
translate([-7,7,0])
cube([7,7,20],center=true);
translate([7,-7,0])
cube([7,7,20],center=true);
translate([-7,-7,0])
cube([7,7,20],center=true);
}

color("DarkBlue")
translate([0,0,-4])
cylinder(10, 10, 10, $fn=20,center=true);

}
