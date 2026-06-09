
// just comment this out when editing the module
//game_board();
correction = 71.5;


module game_board() {
 
// base board
difference(){
union(){
color("#3A3A3A")
difference(){
translate([0,234-(100),0])
cube([1000,2000,0.1],center=true);
translate([0,546,0])
cylinder(10, 1.81, 1.81, $fn=25,center=true);
}


// vertical
translate([-4,234-(100),0])
union(){
difference(){
union()
{
for (i = [-500:24:500]) {
  color("#888888")
  translate([i,0,0.5])
  cube([3,2000,0.05],center=true);
 }
}

translate([0,546,0])
cylinder(10, 2, 2, $fn=10,center=true);
}
}


// horizontal
translate([0,234-(104.5),0])
union(){
for (i = [-1000:24:1000]) {
  color("#888888")
  translate([0,i,0.5])
  cube([1000,3,0.05],center=true);   
}
}
}
translate([0,546+correction,0])
cylinder(10, 1.8, 1.8, $fn=25,center=true);
}


// sheen sheet 
/*
color("Black",0.7)
difference(){
translate([0,234-(100),0.8])
cube([1000,2000,1],center=true);
translate([0,545+correction,0])
cylinder(5, 230, 230, $fn=300,center=true);
}
*/

color("Ivory"){
translate([72,-210,2])
column_base();
translate([-72,-210,2])
column_base();
translate([72,-65,2])
column_base();
translate([-72,-65,2])
column_base();
translate([72,-356,2])
column_base();
translate([-72,-356,2])
column_base();


translate([0,correction,0])
for (i = [99:11.75:(11.75*25*1.6)]) {
    
translate([-17.8,i,2])
temple_column();
translate([17.8,i,2])
temple_column();

}

// front temple column
translate([0,correction,0])
for (i = [-60:30:60]) {
    
translate([i,80,2])
union(){
  difference(){
cube([16,16,0.1],center=true);
cube([14.3,14.3,0.2],center=true);
  }
  cylinder(0.1, 3.3, 3.3, $fn=15);
}
}
// front basin

translate([0,-212,2])
union(){
difference(){
union(){
difference(){
cube([99,195,0.1],center=true);
cube([93,188,0.2],center=true);
}
translate([0,95,0])
difference(){
    cylinder(0.1, 36, 36, $fn=50,center=true);
    cylinder(0.2, 33, 33, $fn=50,center=true);
  }
translate([0,-96,0])
difference(){
    cylinder(0.1, 36, 36, $fn=50,center=true);
    cylinder(0.2, 33, 33, $fn=50,center=true);
  }
}
cube([93,188,0.2],center=true);
cube([65.8,195.2,0.2],center=true);
}
difference(){
    cylinder(0.1, 10, 10, $fn=15,center=true);
    cylinder(0.2, 9, 9, $fn=15,center=true);
  }
for (j = [0:90:360]) {
rotate([0,0,j])
translate([0,15,0])
for (i = [-15:10:15]) {
    translate([i,0,0])
    cylinder(0.1, 1.5, 1.5, $fn=10,center=true);
}
rotate([0,0,j])
translate([0,22.5,0])
cylinder(0.1, 1.8, 1.8, $fn=12);
}
}

// noise circle 
translate([-150,-152+correction,2])
scale(1.3)
union(){
difference() {
    cylinder(0.1, 11, 11, $fn=8,center=true);
    cylinder(0.2, 9.5, 9.5, $fn=8,center=true);
}
for (i = [0:45:360]) {
    rotate([0,0,i])
    translate([0,14,0])
    cylinder(0.1, 1, 1, $fn=15);
}
}

//accordion
translate([-160,-53+correction,2])
rotate([0,0,-45])
scale(1.8)
union(){
    for (i = [0:4:24]) {
        translate([-5,i,0])
        cube([2,1,0.1],center=true);
        translate([5,i,0])
        cube([2,1,0.1],center=true);

    }
    translate([0,-3,0])
    cube([12,1,0.1],center=true);
    translate([0,27,0])
    cube([12,1,0.1],center=true);
    translate([0,-4,0])
    cylinder(0.1, 1.5, 1.5, $fn=10);
    translate([0,28,0])
    cylinder(0.1, 1.5, 1.5, $fn=10);
  }


// sirpinski
translate([-150,65+correction,2])
scale(0.9)
union(){
difference(){
cube([45,45,0.2],center=true);
cube([41.5,41.5,0.4],center=true);
}
cube([14,14,0.1],center=true);
translate([12,12,0])
cylinder(0.3, 3, 3, $fn=20);
translate([-12,12,0])
cylinder(0.3, 3, 3, $fn=20);
translate([12,-12,0])
cylinder(0.3, 3, 3, $fn=20);
translate([-12,-12,0])
cylinder(0.3, 3, 3, $fn=20);
}


translate([150,65+correction,2])
scale(0.9)
union(){
difference(){
cube([45,45,0.2],center=true);
cube([41.5,41.5,0.4],center=true);
}
cube([14,14,0.1],center=true);
translate([12,12,0])
cylinder(0.3, 3, 3, $fn=20);
translate([-12,12,0])
cylinder(0.3, 3, 3, $fn=20);
translate([12,-12,0])
cylinder(0.3, 3, 3, $fn=20);
translate([-12,-12,0])
cylinder(0.3, 3, 3, $fn=20);
}

// fractal_cube_structure
translate([150,-45+correction,2])
scale(1.5)
union(){
difference() {
    cylinder(0.1, 5, 5, $fn=15,center=true);
    cylinder(0.2, 4, 4, $fn=15,center=true);
}
for (i = [0:90:360]) {
  rotate([0,0,i])
  translate([8,0,0])
  cube([8,1,0.1],center=true);
  rotate([0,0,i])
  translate([14,0,0])
  cylinder(0.1, 2, 2, $fn=10);
}
}

// pyramid structure 
translate([150,-154+correction,2])
scale(1.3)
union(){
  difference(){
  cube([20,20,0.1],center=true);
  cube([18,18,0.2],center=true);
  }
  translate([11,11,0])
  cylinder(0.1, 2, 2, $fn=10);
  translate([-11,11,0])
  cylinder(0.1, 2, 2, $fn=10);
  translate([11,-11,0])
  cylinder(0.1, 2, 2, $fn=10);
  translate([-11,-11,0])
  cylinder(0.1, 2, 2, $fn=10);

}

// outer square-circles
translate([193,-315,2])
union(){
  difference(){
cube([100,100,0.1],center=true);
cube([90,90,0.2],center=true);
  }
  cylinder(0.1, 45, 45, $fn=50);
}

translate([-193,-315,2])
union(){
  difference(){
cube([100,100,0.1],center=true);
cube([90,90,0.2],center=true);
  }
  cylinder(0.1, 45, 45, $fn=50);
}

translate([-380,-266,2])
union(){
difference()
{
cube([200,200,0.1],center=true);
rotate([0,0,45])
cube([15,300,0.2],center=true);
rotate([0,0,-45])
cube([15,300,0.2],center=true);

}
}

translate([380,-266,2])
union(){
difference()
{
cube([200,200,0.1],center=true);
rotate([0,0,45])
cube([15,300,0.2],center=true);
rotate([0,0,-45])
cube([15,300,0.2],center=true);

}
}

// outer circle 
translate([-380,-60,2])
union(){
difference() {
    cylinder(0.1, 65, 65, $fn=100,center=true);
    cylinder(0.2, 63, 63, $fn=100,center=true);
}
difference() {
    cylinder(0.1, 55, 55, $fn=100,center=true);
    cylinder(0.2, 53, 53, $fn=100,center=true);
}
rotate([0,0,45])
cube([35,35,0.1],center=true);
}

translate([380,-60,2])
union(){
difference() {
    cylinder(0.1, 65, 65, $fn=100,center=true);
    cylinder(0.2, 63, 63, $fn=100,center=true);
}
difference() {
    cylinder(0.1, 55, 55, $fn=100,center=true);
    cylinder(0.2, 53, 53, $fn=100,center=true);
}
rotate([0,0,45])
cube([35,35,0.1],center=true);
}


// outer hedges
for (i = [200:151.5:1200]) {
    
translate([-380,i,1.5])
scale([70,70,1])
cube([1,1.61,0.1],center=true);
}

for (i = [200:151.5:1200]) {
    
translate([380,i,1.5])
scale([70,70,1])
cube([1,1.61,0.1],center=true);
}

// temple sanctum outline
translate([0,correction,0])
union(){
translate([0,545,2])
difference() {
difference() {
    cylinder(0.1, r1=71, r2=71, $fn=200,center=true);
    cylinder(0.2, r1=68, r2=68, $fn=200,center=true);
}
cube([30,150,1],center=true);
}
translate([0,545,2])
difference(){
difference() {
    cylinder(0.1, r1=46, r2=46, $fn=200,center=true);
    cylinder(0.2, r1=43.8, r2=43.8, $fn=200,center=true);
}
cube([14,150,1],center=true);
}


// temple sanctum columns
translate([0,545,2])
difference(){
union(){
  for (i = [0:22.5:360]) {
    rotate([0,0,i])
    translate([0,88,0])     
union(){
difference() {
    cylinder(0.1, 9, 9, $fn=25,center=true);
    cylinder(0.2, 7.6, 7.6, $fn=25,center=true);
}
cylinder(0.1, 1.5, 1.5, $fn=12,center=true);
translate([4.5,4.5,0])
cylinder(0.1, 1.2, 1.2, $fn=12,center=true);
translate([-4.5,4.5,0])
cylinder(0.1, 1.2, 1.2, $fn=12,center=true);
translate([4.5,-4.5,0])
cylinder(0.1, 1.2, 1.2, $fn=12,center=true);
translate([-4.5,-4.5,0])
cylinder(0.1, 1.2, 1.2, $fn=12,center=true);
}
}
}
translate([0,-85,0])
cube([20,30,1],center=true);
}
}
}

module column_base() {
 union()
{
difference(){
cube([18,18,0.1],center=true);
cube([16,16,0.2],center=true);
}
cylinder(0.1, 1.3, 1.3, $fn=15);
translate([7.3,7.3,0])
cylinder(0.1, 1, 1, $fn=15);
translate([-7.3,7.3,0])
cylinder(0.1, 1, 1, $fn=15);
translate([7.3,-7.3,0])
cylinder(0.1, 1, 1, $fn=15);
translate([-7.3,-7.3,0])
cylinder(0.1, 1, 1, $fn=15);


}  
}



module temple_column() {
 union(){
difference(){
cube([7.5,7.5,0.3],center=true);
cube([6,6,0.4],center=true);
}
cylinder(0.3, 1.25, 1.25, $fn=15);
translate([1.8,1.8,0])
cube([0.8,0.8,0.3],center=true);
translate([-1.8,1.8,0])
cube([0.8,0.8,0.3],center=true);
translate([1.8,-1.8,0])
cube([0.8,0.8,0.3],center=true);
translate([-1.8,-1.8,0])
cube([0.8,0.8,0.3],center=true);
}

   
}
}

/*
rotate([0,0,45])
translate([80.5,-200,2])
cube([14,570,1],center=true);
rotate([0,0,-45])
translate([-80.5,-200,2])
cube([14,570,1],center=true);
*/







