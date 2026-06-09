
include <space.scad>

include <quest_logo3.scad>

translate([-10,-100,-55])
quest_logo3();

$vpt = [-2.93, 0.03, -0.76];   // camera position
$vpr = [89.30, 0.00, 1.20];    // rotation
$vpd = 167.46;                  // distance from camera
$fov = 22.50;                   // field of view (perspective only)

distance = distance == undef ? 0 : distance; 

// -75 
// translate([0,-100,0])
// sphere(r=14, $fn=100);


translate([0, -100, 0]) {
rotate([84+(150*$t),-7.5+3,7-(47*$t)]){

expan = 8.4+(50*$t);
expansion = 0.58+expan;
expansion2 = 0.55+expan;


star_shrink = 0.135;

for (i = [0:72:360]) {
  color("Orange")
  rotate([0,-63.5,i])
  translate([0,0,2.49+expansion2])
  scale([0.5,0.5,0.001])
  rotate([0,0,36])
  regular_star(5,10-star_shrink,3.8-star_shrink);

  color("Orange")
  rotate([180,0,0])
  union(){
  rotate([0,-63.5,i+108])
  translate([0.03,0,2.52+expansion2])
  scale([0.5,0.5,0.001])
  rotate([0,0,36])
  regular_star(5,10-star_shrink,3.8-star_shrink);
  }

  // end caps
  color("Orange")
  translate([0,0,2.48+expansion2])
  rotate([0,0,-108+36])
  scale([0.5,0.5,0.001])
  regular_star(5,10-star_shrink,3.8-star_shrink);

  color("Orange")
  translate([0,0,-2.487-expansion2])
  rotate([0,0,36])
  scale([0.5,0.5,0.001])
  regular_star(5,10-star_shrink,3.8-star_shrink);
}



triangle_size = 5.45;
// triangles
for (i = [0:72:360]) {
    
color("Orange")
rotate([0,-101.1,i])
translate([0,0,1.45+expansion])
scale([1,1,0.01])
regular_star(1.5,triangle_size,triangle_size);

translate([0,0,-0.05])
rotate([180,0,(72/2)])
color("Orange")
union(){
rotate([0,-101.1,i])
translate([0,0,1.48+expansion])
scale([1,1,0.01])
regular_star(1.5,triangle_size,triangle_size);
}
color("Orange")
translate([0,0,-0.05])
rotate([0,0,36])
union(){
rotate([0,142.34,i])
translate([0,0,1.43+expansion])
scale([1,1,0.01])
regular_star(1.5,triangle_size,triangle_size);
}
color("Orange")
translate([0,0,-0.075])
rotate([180,0,0])
union(){
rotate([0,142.34,i])
translate([0,0,1.5+expansion])
scale([1,1,0.01])
regular_star(1.5,triangle_size,triangle_size);
}

}
}

}



translate([0,-75,0])
scale(1-$t)
glow_sphere();



module regular_star(points = 5, outer_r = 10, inner_r = 4) {
    steps = points * 2;
    star_points = [
        for (i = [0 : steps - 1])
            let (
                angle = 360 / steps * i,
                radius = (i % 2 == 0) ? outer_r : inner_r
            )
            [cos(angle) * radius, sin(angle) * radius]
    ];
    polygon(points = star_points);
}



