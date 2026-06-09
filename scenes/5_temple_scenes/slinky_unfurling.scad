
// short length / neck is the circle diameter




module slinky2() {
    
circleThickness = 1;
radius = 3.8;
bar_shrink = 0.22;

rotate([180,0,0])
union(){
// legs
color("DarkGray")
translate([17+(1*$t),-2.3,-4.5+(4.5*$t)])
rotate([30-(30*$t),0,90])
cube([0.8-bar_shrink,13,0.8-bar_shrink],center=true);

// legs
color("DarkGray")
translate([17+(1*$t),2.3,-4.5+(4.5*$t)])
rotate([30-(30*$t),0,90])
cube([0.8-bar_shrink,13,0.8-bar_shrink],center=true);

// middle bar
color("DarkGray")
translate([2,0,-1+(1*$t)])
rotate([0,0,90])
cube([0.8-bar_shrink,15,0.8-bar_shrink],center=true);

// neck
color("DarkGray")
translate([-11,0,-3.5+(3.5*$t)])
rotate([0,-28+(28*$t),0])
cube([radius*2,0.8-bar_shrink,0.8-bar_shrink],center=true);

 
// belly
translate([10,0,-1+(1*$t)])
color("Black")
rotate([0,12-(12*$t),0])
scale([1,1,0.15])
sphere(radius,$fn=40);
// end
translate([24+(2*$t),0,-9.5+(9.5*$t)])
color("Black")
rotate([0,52-(52*$t),0])
scale([1,1,0.15])
sphere(radius,$fn=40);
// second from the head
translate([-5,0,-1+(1*$t)])
color("Black")
rotate([0,-10+(10*$t),0])
scale([1,1,0.15])
sphere(radius,$fn=40);



// head
translate([-14-(1*$t),0,-5+(5*$t)])
rotate([0,-40+(40*$t),0])
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
