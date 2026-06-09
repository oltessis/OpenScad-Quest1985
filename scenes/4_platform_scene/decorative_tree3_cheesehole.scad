

module decorative_tree3() {
    
color("RoyalBlue")
translate([0,0,11])
scale(1.0)
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

color("RoyalBlue")
translate([0,0,30])
scale(0.5)
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

color("RoyalBlue")
translate([0,0,22])
scale(0.75)
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
cylinder(30, 0.6, 0.6, $fn=10);

difference()
{
color("Khaki")
cube([10,10,5],center=true);

translate([-2,-2,0])
cylinder(5, 0.8, 0.8, $fn=4,center=true);
translate([2,-2,0])
cylinder(5, 0.8, 0.8, $fn=4,center=true);
translate([-2,2,0])
cylinder(5, 0.8, 0.8, $fn=4,center=true);
translate([2,2,0])
cylinder(5, 0.8, 0.8, $fn=4,center=true);

translate([0,0,-0.5])
rotate([90,0,0])
{
  translate([-2,-1.5,0])
  cylinder(10, 0.8, 0.8, $fn=4,center=true);
  translate([2,-1.5,0])
  cylinder(10, 0.8, 0.8, $fn=4,center=true);
  translate([-2,1.5,0])
  cylinder(10, 0.8, 0.8, $fn=4,center=true);
  translate([2,1.5,0])
  cylinder(10, 0.8, 0.8, $fn=4,center=true);
}

translate([0,0,-0.5])
rotate([0,90,0])
{
  translate([-2,-1.5,0])
  cylinder(10, 0.8, 0.8, $fn=4,center=true);
  translate([2,-1.5,0])
  cylinder(10, 0.8, 0.8, $fn=4,center=true);
  translate([-2,1.5,0])
  cylinder(10, 0.8, 0.8, $fn=4,center=true);
  translate([2,1.5,0])
  cylinder(10, 0.8, 0.8, $fn=4,center=true);
}

}
}













