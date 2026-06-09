
color("Yellow",0.5)
translate([0,0,23])
rotate([0,0,45])
cylinder(5,3,0,$fn=4);

color("RoyalBlue")
translate([0,0,23])
cylinder(0.1,3,3);

color("RoyalBlue")
translate([0,0,20.5])
cylinder(0.1,3,3);

color("RoyalBlue")
translate([0,0,13])
scale([1,1,1.3])
union()
{
  difference()
  {
  sphere(5,$fn=40);

  for (i = [0:15:360]) {
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
        sphere(0.3,$fn=15);
      }
  } 
  }
  }
  //sphere(0.2,$fn=10);
}

color("Yellow")
cylinder(25, 0.7, 0.7, $fn=10);

color("DarkSlateGray")
cylinder(4,3.5,3.5,$fn=20);








