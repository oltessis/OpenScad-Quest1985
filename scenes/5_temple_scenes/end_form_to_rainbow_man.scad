

//man();

//translate([0,4,8])
//rainbow_man_transition();

circleThickness = 1; // 1
circleDepth = 0.15; // 0.7
radius = 3.8;
bar_shrink = 0.1;

//circleThickness = 1;
//radius = 3.8;
//bar_shrink = 0.22;


rainbow_colors = ["Blue","DarkOrange","Orange","Yellow","Green","Blue",
                  "DarkOrange","Yellow","Green","Blue","DarkOrange",
                  "Orange","Yellow","Blue","DarkOrange","Orange","Blue","DarkOrange","Orange","Yellow","Green","Blue",
                  "DarkOrange","Yellow","Green","Blue","Blue","DarkOrange","Orange","Yellow","Green","Blue",
                  "DarkOrange","Yellow","Green","Blue","Blue","DarkOrange","Orange","Yellow","Green","Blue",
                  "DarkOrange","Yellow","Green","Blue","Blue","DarkOrange","Orange","Yellow","Green","Blue",
                  "DarkOrange","Yellow","Green","Blue"];

module rainbow_transition() {
    
  for (i = [0:1:37]) {
      
    color(rainbow_colors[i])
    difference(){
    scale(1+(0.005*(i+1)))
    translate([0,2,0])
    rainbow_man_transition();
    difference(){
          translate([0,-4,0])
          cube([40,30,200],center=true);
          translate([0,0,(i*2)+1-30+1])
          cube([40,30,10],center=true);
      }
    }
  }
}



module man() {
   
color("Ivory")
translate([0,0,4])
union(){
rotate([-90,0,0])
union(){
translate([radius*1.5,0,0])
color("Black")
scale([1,1,circleDepth])
sphere(radius,$fn=40);
translate([-radius*1.5,0,0])
color("Black")
scale([1,1,circleDepth])
sphere(radius,$fn=40);


color("DarkGray")
translate([0,-6,0])
rotate([0,0,90])
cube([0.8-bar_shrink,15,0.8-bar_shrink],center=true);

translate([0,-12,0])
color("Black")
scale([1,1,circleDepth])
sphere(radius,$fn=40);

// arms 
color("DarkGray")
translate([6.7,-19.7,0])
rotate([0,0,30])
cube([0.8-bar_shrink,11,0.8-bar_shrink],center=true);

color("DarkGray")
translate([-6.7,-19.7,0])
rotate([0,0,-30])
cube([0.8-bar_shrink,11,0.8-bar_shrink],center=true);


color("DarkGray")
rotate([0,0,90])
translate([-18,0,0])
cube([radius*2,0.8-bar_shrink,0.8-bar_shrink],center=true);

translate([0,-21.5,0])
color("Black")
scale([1,1,circleDepth])
sphere(radius,$fn=40);
}
}
}



module rainbow_man_transition() {
    
translate([0,20,7.2])
union(){
// arms
color("DarkGray")
translate([7.5-(0.8*$t),-20-(4*$t),0+(8.5*$t)])
rotate([90*$t,30*$t,0])
cube([0.8-bar_shrink,13-(2*$t),0.8-bar_shrink],center=true);

color("DarkGray")
translate([-7.5+(0.8*$t),-20-(4*$t),0+(8.5*$t)])
rotate([90*$t,-30*$t,0])
cube([0.8-bar_shrink,13-(2*$t),0.8-bar_shrink],center=true);

// hips
color("DarkGray")
translate([0,-24,-5.2+3-(3*$t)])
rotate([0,0,90])
cube([0.8-bar_shrink,15,0.8-bar_shrink],center=true);
}

// neck
color("DarkGray")
translate([0,-7+(3*$t),13])
rotate([0,90,0])
cube([radius*2,0.8-bar_shrink,0.8-bar_shrink],center=true);

// hands
translate([7.5-(1.8*$t),7-(11*$t),4.5-(8.5*$t)])
color("Black")
rotate([90,0,0])
scale([1,1,0.15])
sphere(radius,$fn=40);
translate([-7.5+(1.8*$t),7-(11*$t),4.5-(8.5*$t)])
rotate([90,0,0])
color("Black")
scale([1,1,0.15])
sphere(radius,$fn=40);
// torso
translate([0,-6.25+(2.25*$t),10-(2*$t)])
color("Black")
rotate([-90*$t,0,0])
scale([1,1,0.15])
sphere(radius,$fn=40);



// head
translate([0,-6.25+(2.25*$t),14+(0.5*$t)])
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
difference(){
regular_star(1.5,3,3);
regular_star(1.5,3-(wall_thickness*2),3-(wall_thickness*2));
}

rotate([0,0,240+xtra_rotation])
translate([triagon_distance,0,0])
difference(){
cylinder(1, 2.25, 2.25, $fn=30,center=true);
cylinder(1.1, 2.25-wall_thickness, 2.25-wall_thickness, $fn=30,center=true);
}

rotate([0,0,360+xtra_rotation])
translate([triagon_distance,0,0])
rotate([0,0,30])
difference(){
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

