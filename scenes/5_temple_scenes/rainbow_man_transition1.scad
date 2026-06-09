
// short length / neck is the circle diameter

include <triagon3d.scad>


//triagon3d();

circleThickness = 1;
radius = 3.8;
bar_shrink = 0.22;


module rainbow_man_transition() {
    


// spine
color("DarkGray")
translate([0,-26+20.2,0+7.2])
rotate([90,0,90])
cube([0.8-bar_shrink,15,0.8-bar_shrink],center=true);


translate([0,0,3*$t])
union(){
color("DarkGray")
translate([0,-26.2+20,1+7.2])
rotate([0,0,90])
cube([0.8-bar_shrink,13,0.8-bar_shrink],center=true);

translate([0,-6,9])
color("Black")
scale([1,1,0.15])
sphere(radius,$fn=40);
}


// head
translate([0,0,3*$t])
union(){
union(){
translate([0,-6.25,14])
rotate([-90,90,0])
union(){
translate([-4.5,1.3,0.4])
rotate([-5,-5,0])
scale(0.25)
union(){
triagon_distance = 3.5;
xtra_rotation = -30;
wall_thickness = 0.5;

rotate([0,0,120+xtra_rotation])
translate([triagon_distance,0,0])
rotate([0,0,60])
*difference(){
regular_star(1.5,3,3);
regular_star(1.5,3-(wall_thickness*2),3-(wall_thickness*2));
}

rotate([0,0,240+xtra_rotation])
translate([triagon_distance,0,0])
*difference(){
cylinder(1, 2.25, 2.25, $fn=30,center=true);
cylinder(1.1, 2.25-wall_thickness, 2.25-wall_thickness, $fn=30,center=true);
}

rotate([0,0,360+xtra_rotation])
translate([triagon_distance,0,0])
rotate([0,0,30])
*difference(){
cube([4.5,4.5,1],center=true);
cube([4.5-(wall_thickness*2),4.5-(wall_thickness*2),1.2],center=true);
}
}

rotate([0,0,0])   
translate([-3,0,0])
color("Black")
scale([1,1,0.15])
sphere(radius,$fn=40);
}
}

// manual triangle
rotate([0,0,0])
translate([-0.87,-6,17.76])
color("#2E6256")
rotate([0,0,0])
cube(1.15,center=true);


translate([-2.2,-6,18.5])
color("DarkOrange",0.8)
//rotate([0,150,0])
rotate([-90,0,10])
scale(0.15)
cylinder(6.5, 5.5, 0, $fn=3);

rotate([0,0,0])
translate([-0.85,-6.2,19.25])
color("DarkSlateGray",1)
sphere(0.7,$fn=100);
}
}

//triagon3d();

triagon_distance = 7;

module triagon3d() {

rot_angle = -360*$t+220;

scale(0.3){
rotate([0,360+rot_angle,0])
translate([0,0,triagon_distance])
color("LightCyan",0.3)
sphere(5,$fn=100);

rotate([0,240+rot_angle,0])
translate([0,0,triagon_distance-1])
color("DarkOrange",0.8)
rotate([720*$t,0,0])
cylinder(6.5, 5.5, 0, $fn=3);

rotate([0,120+rot_angle,0])
translate([0,0,triagon_distance])
color("#2E6256")
rotate([360*$t,360*$t,360*$t])
cube(5.7,center=true);
}
}


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
