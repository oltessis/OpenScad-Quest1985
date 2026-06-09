
module noise_circle() {
    
for (i = [0:45:360]) {
    
rotate([0,0,i])
translate([15,0,0])
  union()
  {
    color("MediumBlue")
    translate([0,0,31.5])
    sphere(2,$fn=20);
    color("SeaGreen")
    translate([0,0,26.5])
    cube([4.5,4.5,0.2],center=true);
    color("LightSalmon")
    translate([0,0,21.5])
    cube([4,4,0.2],center=true);
    color("SteelBlue")
    translate([0,0,20.75])
    cube([4,4,0.2],center=true);
    color("LightSalmon")
    translate([0,0,20])
    cube([4,4,0.2],center=true);
    color("White")
    translate([0,0,7.4])
    cylinder(18, 0, 1, $fn=20);
    color("MediumBlue")
    translate([0, 0, 7.5]) 
    sphere(1.5,$fn=15);
    color("DeepSkyBlue")
    rotate([0,0,45])
    cylinder(6, 3, 0, $fn=4);
  }
  
  rotate([0,0,22.5+i])
  translate([12,0,0])
  union()
  {
    color("LightCyan",0.2)
    cylinder(30, 1.5, 1.5, $fn=18);
    color("khaki")
    cylinder(0.5,1.5,1.5,$fn=18);
  }
}

color("SteelBlue")
cylinder(1,9,9,$fn=30);

}
