
module cube_lattice_building() {
    
edgecube = "LightSalmon";
middlecube = "DodgerBlue";


color("LightCyan",0.5)
translate([0,0,14])
sphere(0.5,$fn=20);

// pyramid top
color("DodgerBlue")
translate([0,0,10])
rotate([0,0,45])
cylinder(3.5, 4.5, 0, $fn=4);

color("DodgerBlue")
translate([0,0,9.5])
cube([7,7,0.25],center=true);

color("gold")
translate([0,0,9.25])
cube([8.5,8.5,0.25],center=true);


// internal mechanism

color("orange")
translate([1.5,0,4])
sphere(0.6,$fn=20);

color("orange")
translate([-1.5,0,4])
sphere(0.6,$fn=20);


union()
{
  difference()
  {
  color("DodgerBlue")
  translate([0,0,4])
  rotate([0,90,0])
  difference() {
      cylinder(3, 2.2, 2.2, $fn=20,center=true);
      cylinder(3.1, 2,2, $fn=20,center=true);
  }
    translate([0,0,4])
    cube([5,5,1.5],center=true);
  }
  
  difference()
  {
  color("Yellow")
  translate([0,0,4])
  rotate([0,90,0])
  difference() {
      cylinder(3, 1.5, 1.5, $fn=20,center=true);
      cylinder(3.1, 1.3, 1.3, $fn=20,center=true);
  }
    translate([0,0,4])
    cube([4,4,0.5],center=true);
  }

 }
// sides 
for (j = [0:90:360]) {
    
  rotate([0,0,j])
  translate([0,4.5,0])
  union()
  {
    union()
    {
      for (i = [-4:1:4]) {
      
      color(middlecube)
      translate([i,0,0])
      cube(0.5,center=true);
      }

      for (i = [-4.5:1:4.5]) {
      
      color(edgecube)
      translate([i,0,0.5])
      cube(0.5,center=true);
      color(edgecube)
      translate([i,0,-0.5])
      cube(0.5,center=true);
      }
    } 

    translate([4,0,4])
    rotate([0,90,0])
    union()
    {
      for (i = [-4:1:4]) {
      
      color(middlecube)
      translate([i,0,0])
      cube(0.5,center=true);
      }

      for (i = [-4.5:1:4.5]) {
      
      color(edgecube)
      translate([i,0,0.5])
      cube(0.5,center=true);
      color(edgecube)
      translate([i,0,-0.5])
      cube(0.5,center=true);
      }
    } 

    translate([-4,0,4])
    rotate([0,90,0])
    union()
    {
      for (i = [-4:1:4]) {
      
      color(middlecube)
      translate([i,0,0])
      cube(0.5,center=true);
      }

      for (i = [-4.5:1:4.5]) {
      
      color(edgecube)
      translate([i,0,0.5])
      cube(0.5,center=true);
      color(edgecube)
      translate([i,0,-0.5])
      cube(0.5,center=true);
      }
  } 
    translate([0,0,8])
    rotate([0,0,0])
    union()
    {
      for (i = [-4:1:4]) {
      
      color(middlecube)
      translate([i,0,0])
      cube(0.5,center=true);
      }

      for (i = [-4.5:1:4.5]) {
      
      color(edgecube)
      translate([i,0,0.5])
      cube(0.5,center=true);
      color(edgecube)
      translate([i,0,-0.5])
      cube(0.5,center=true);
      }
  } 
  }
}

translate([0,0,-2])
color("Thistle")
cube([16,16,0.1],center=true);



// column
translate([6.5,6.5,3.2])
scale(1.15)
union()
{

// top pyramid 
color("yellow")
translate([0,0,4.9])
cylinder(1.4, 1, 0, $fn=4);

// column sides 
color("DodgerBlue")
{
translate([0.6,0.6,0])
cube([0.25,0.25,9],center=true);
translate([-0.6,0.6,0])
cube([0.25,0.25,9],center=true);
translate([0.6,-0.6,0])
cube([0.25,0.25,9],center=true);
translate([-0.6,-0.6,0])
cube([0.25,0.25,9],center=true);
}

// lava-lamp-like fill 
mirror([0,0,1])
union()
{
color("DarkOrange")
translate([0,0,0.6])
difference()
{
  cylinder(2, 0.25, 0, $fn=20);
  translate([0,0,-0.1])
  cylinder(2, 0.25, 0, $fn=20);
}
  color("Orange")
  translate([0,0,3.6])
  sphere(0.25,$fn=25);
}

union()
{
color("DarkOrange")
translate([0,0,0.6])
difference()
{
  cylinder(2, 0.25, 0, $fn=20);
  translate([0,0,-0.1])
  cylinder(2, 0.25, 0, $fn=20);
}
  color("Orange")
  translate([0,0,3.6])
  sphere(0.25,$fn=25);
}

color("DodgerBlue")
difference()
{
  cylinder(0.15, 1.05, 1.05, $fn=15);
  translate([0,0,-0.005])
  cylinder(0.17, 0.8, 0.8, $fn=5);
}

// cylinder end caps
color("DodgerBlue")
translate([0,0,4.5])
cylinder(0.15, 1.1, 1.1, $fn=20);

color("DodgerBlue")
translate([0,0,-4.5])
cylinder(0.15, 1.1, 1.1, $fn=20);

color("DodgerBlue")
translate([0,0,4.4])
cube([1,1,0.15],center=true);

color("DodgerBlue")
translate([0,0,-4.3])
cube([1,1,0.15],center=true);

}



// column
translate([-6.5,6.5,3.2])
scale(1.15)
union()
{

// top pyramid 
color("yellow")
translate([0,0,4.9])
cylinder(1.4, 1, 0, $fn=4);

// column sides 
color("DodgerBlue")
{
translate([0.6,0.6,0])
cube([0.25,0.25,9],center=true);
translate([-0.6,0.6,0])
cube([0.25,0.25,9],center=true);
translate([0.6,-0.6,0])
cube([0.25,0.25,9],center=true);
translate([-0.6,-0.6,0])
cube([0.25,0.25,9],center=true);
}

// lava-lamp-like fill 
mirror([0,0,1])
union()
{
color("DarkOrange")
translate([0,0,0.6])
difference()
{
  cylinder(2, 0.25, 0, $fn=20);
  translate([0,0,-0.1])
  cylinder(2, 0.25, 0, $fn=20);
}
  color("Orange")
  translate([0,0,3.6])
  sphere(0.25,$fn=25);
}

union()
{
color("DarkOrange")
translate([0,0,0.6])
difference()
{
  cylinder(2, 0.25, 0, $fn=20);
  translate([0,0,-0.1])
  cylinder(2, 0.25, 0, $fn=20);
}
  color("Orange")
  translate([0,0,3.6])
  sphere(0.25,$fn=25);
}

color("DodgerBlue")
difference()
{
  cylinder(0.15, 1.05, 1.05, $fn=15);
  translate([0,0,-0.005])
  cylinder(0.17, 0.8, 0.8, $fn=5);
}

// cylinder end caps
color("DodgerBlue")
translate([0,0,4.5])
cylinder(0.15, 1.1, 1.1, $fn=20);

color("DodgerBlue")
translate([0,0,-4.5])
cylinder(0.15, 1.1, 1.1, $fn=20);

color("DodgerBlue")
translate([0,0,4.4])
cube([1,1,0.15],center=true);

color("DodgerBlue")
translate([0,0,-4.3])
cube([1,1,0.15],center=true);

}




// column
translate([6.5,-6.5,3.2])
scale(1.15)
union()
{

// top pyramid 
color("yellow")
translate([0,0,4.9])
cylinder(1.4, 1, 0, $fn=4);

// column sides 
color("DodgerBlue")
{
translate([0.6,0.6,0])
cube([0.25,0.25,9],center=true);
translate([-0.6,0.6,0])
cube([0.25,0.25,9],center=true);
translate([0.6,-0.6,0])
cube([0.25,0.25,9],center=true);
translate([-0.6,-0.6,0])
cube([0.25,0.25,9],center=true);
}

// lava-lamp-like fill 
mirror([0,0,1])
union()
{
color("DarkOrange")
translate([0,0,0.6])
difference()
{
  cylinder(2, 0.25, 0, $fn=20);
  translate([0,0,-0.1])
  cylinder(2, 0.25, 0, $fn=20);
}
  color("Orange")
  translate([0,0,3.6])
  sphere(0.25,$fn=25);
}

union()
{
color("DarkOrange")
translate([0,0,0.6])
difference()
{
  cylinder(2, 0.25, 0, $fn=20);
  translate([0,0,-0.1])
  cylinder(2, 0.25, 0, $fn=20);
}
  color("Orange")
  translate([0,0,3.6])
  sphere(0.25,$fn=25);
}

color("DodgerBlue")
difference()
{
  cylinder(0.15, 1.05, 1.05, $fn=15);
  translate([0,0,-0.005])
  cylinder(0.17, 0.8, 0.8, $fn=5);
}

// cylinder end caps
color("DodgerBlue")
translate([0,0,4.5])
cylinder(0.15, 1.1, 1.1, $fn=20);

color("DodgerBlue")
translate([0,0,-4.5])
cylinder(0.15, 1.1, 1.1, $fn=20);

color("DodgerBlue")
translate([0,0,4.4])
cube([1,1,0.15],center=true);

color("DodgerBlue")
translate([0,0,-4.3])
cube([1,1,0.15],center=true);

}




// column
translate([-6.5,-6.5,3.2])
scale(1.15)
union()
{

// top pyramid 
color("yellow")
translate([0,0,4.9])
cylinder(1.4, 1, 0, $fn=4);

// column sides 
color("DodgerBlue")
{
translate([0.6,0.6,0])
cube([0.25,0.25,9],center=true);
translate([-0.6,0.6,0])
cube([0.25,0.25,9],center=true);
translate([0.6,-0.6,0])
cube([0.25,0.25,9],center=true);
translate([-0.6,-0.6,0])
cube([0.25,0.25,9],center=true);
}

// lava-lamp-like fill 
mirror([0,0,1])
union()
{
color("DarkOrange")
translate([0,0,0.6])
difference()
{
  cylinder(2, 0.25, 0, $fn=20);
  translate([0,0,-0.1])
  cylinder(2, 0.25, 0, $fn=20);
}
  color("Orange")
  translate([0,0,3.6])
  sphere(0.25,$fn=25);
}

union()
{
color("DarkOrange")
translate([0,0,0.6])
difference()
{
  cylinder(2, 0.25, 0, $fn=20);
  translate([0,0,-0.1])
  cylinder(2, 0.25, 0, $fn=20);
}
  color("Orange")
  translate([0,0,3.6])
  sphere(0.25,$fn=25);
}

color("DodgerBlue")
difference()
{
  cylinder(0.15, 1.05, 1.05, $fn=15);
  translate([0,0,-0.005])
  cylinder(0.17, 0.8, 0.8, $fn=5);
}

// cylinder end caps
color("DodgerBlue")
translate([0,0,4.5])
cylinder(0.15, 1.1, 1.1, $fn=20);

color("DodgerBlue")
translate([0,0,-4.5])
cylinder(0.15, 1.1, 1.1, $fn=20);

color("DodgerBlue")
translate([0,0,4.4])
cube([1,1,0.15],center=true);

color("DodgerBlue")
translate([0,0,-4.3])
cube([1,1,0.15],center=true);

}
}
