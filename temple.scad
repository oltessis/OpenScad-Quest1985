
for (i = [0:6:120]) {
    
translate([0,i,13])
union()
{
color("DodgerBlue")
rotate([-90,0,0])
difference(){
  difference() {
      
  cylinder(3, 10, 10, $fn=50,center=true);
  cylinder(3.1, 9.8, 9.8, $fn=50,center=true);
  }

translate([0,16,0])
cube([40, 40, 40], center=true);
}

color("DarkOrange")
translate([9,0,4])
cylinder(0.1, 1.5, 1.5, $fn=14,center=true);

color("DarkOrange")
translate([-9,0,4])
cylinder(0.1, 1.5, 1.5, $fn=14,center=true);

color("khaki")
translate([9,0,3.3])
cube([3, 3, 0.2], center=true);

color("khaki")
translate([-9,0,3.3])
cube([3, 3, 0.2], center=true);
}


translate([9,i,9])
rotate([0,0,90])
union()
{
// there is a very specific light greenish-yellow 
 color("blue")
 translate([0,0,4])
 cylinder(2.5, 1.5, 0, $fn=16);

 color("PaleGreen")
 translate([0, 0, 4.0])
 cube([3.5, 3.5, 0.25], center=true);

 color("PaleGreen")
 translate([0, 0, 3.8])
 cube([2.5, 2.5, 0.5], center=true);

 // main posts
 color("yellow")
 translate([1, -1, 0])
 cube([0.5, 0.5, 8], center=true);
 color("yellow")
 translate([1, 1, 0])
 cube([0.5, 0.5, 8], center=true);
 color("yellow")
 translate([-1, -1, 0])
 cube([0.5, 0.5, 8], center=true);
 color("yellow")
 translate([-1, 1, 0])
 cube([0.5, 0.5, 8], center=true);
 
 // inner disks
 color("PaleGreen",0.5)
 rotate([90, 0, 0])
 cylinder(0.5, 0.7, 0.7, $fn=14,center=true);

 color("PaleGreen",0.5)
 translate([0,0,2])
 rotate([90, 0, 0])
 cylinder(0.5, 0.7, 0.7, $fn=14,center=true);

 color("PaleGreen",0.5)
 translate([0,0,-2])
 rotate([90, 0, 0])
 cylinder(0.5, 0.7, 0.7, $fn=14,center=true);

 // base
 color("PaleGreen")
 translate([0, 0, -3.8])
 cube([2.5, 2.5, 0.5], center=true);

 color("PaleGreen")
 translate([0, 0, -4.0])
 cube([3.5, 3.5, 0.25], center=true);
 
 // need a light orange 
 color("orange")
 translate([0,0,-6.6])
 cylinder(2.5, 0, 1.5, $fn=16);

 color("SkyBlue")
 translate([0,0,-7.2])
 sphere(0.6, $fn=18);

 color("orange")
 translate([0,0,-8.2])
 sphere(0.2, $fn=18);
}


translate([-9,i,9])
rotate([0,0,90])
union()
{
// there is a very specific light greenish-yellow 
 color("blue")
 translate([0,0,4])
 cylinder(2.5, 1.5, 0, $fn=16);

 color("PaleGreen")
 translate([0, 0, 4.0])
 cube([3.5, 3.5, 0.25], center=true);

 color("PaleGreen")
 translate([0, 0, 3.8])
 cube([2.5, 2.5, 0.5], center=true);

 // main posts
 color("yellow")
 translate([1, -1, 0])
 cube([0.5, 0.5, 8], center=true);
 color("yellow")
 translate([1, 1, 0])
 cube([0.5, 0.5, 8], center=true);
 color("yellow")
 translate([-1, -1, 0])
 cube([0.5, 0.5, 8], center=true);
 color("yellow")
 translate([-1, 1, 0])
 cube([0.5, 0.5, 8], center=true);
 
 // inner disks
 color("PaleGreen",0.5)
 rotate([90, 0, 0])
 cylinder(0.5, 0.7, 0.7, $fn=14,center=true);

 color("PaleGreen",0.5)
 translate([0,0,2])
 rotate([90, 0, 0])
 cylinder(0.5, 0.7, 0.7, $fn=14,center=true);

 color("PaleGreen",0.5)
 translate([0,0,-2])
 rotate([90, 0, 0])
 cylinder(0.5, 0.7, 0.7, $fn=14,center=true);

 // base
 color("PaleGreen")
 translate([0, 0, -3.8])
 cube([2.5, 2.5, 0.5], center=true);

 color("PaleGreen")
 translate([0, 0, -4.0])
 cube([3.5, 3.5, 0.25], center=true);
 
 // need a light orange 
 color("orange")
 translate([0,0,-6.6])
 cylinder(2.5, 0, 1.5, $fn=16);

 color("SkyBlue")
 translate([0,0,-7.2])
 sphere(0.6, $fn=18);

 color("orange")
 translate([0,0,-8.2])
 sphere(0.2, $fn=18);
}

}


