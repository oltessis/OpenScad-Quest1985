// decorative tree 4


module decorative_tree4() {
    

color("RoyalBlue")
translate([0,0,11])
scale(1.0)
union()
{
  difference()
  {
  sphere(5,$fn=40);

  for (i = [0:45:360]) {
  rotate([0,0,i])
  union()
  {
      rotate([90,0,0])
      translate([-1,0,0])
      minkowski() {
        difference()
        {
          difference()
          {
            cylinder(0.1, 6, 6, $fn=30,center=true);
            cylinder(0.2, 5.8, 5.8, $fn=30,center=true);
          }
          translate([-16,0,0])
          cube([40,40,2],center=true);
        }
        sphere(0.8,$fn=15);
      }
  } 
  }
  }
  //sphere(0.2,$fn=10);
}


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





