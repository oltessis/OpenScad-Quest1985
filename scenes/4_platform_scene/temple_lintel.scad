
module temple_lintel() {
    
color("DodgerBlue")
rotate([-90,0,0])
difference(){
  difference() {
      
  cylinder(3, 15, 15, $fn=50,center=true);
  cylinder(3.1, 14.8, 14.8, $fn=50,center=true);
  }

translate([0,15,0])
cube([40, 40, 40], center=true);
}

color("DarkOrange")
translate([14,0,4])
cylinder(0.1, 1.5, 1.5, $fn=14,center=true);

color("DarkOrange")
translate([-14,0,4])
cylinder(0.1, 1.5, 1.5, $fn=14,center=true);

color("khaki")
translate([14,0,3.3])
cube([3, 3, 0.2], center=true);

color("khaki")
translate([-14,0,3.3])
cube([3, 3, 0.2], center=true);
}








