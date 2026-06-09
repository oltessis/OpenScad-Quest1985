
// short length / neck is the circle diameter

circleThickness = 1;
radius = 3.8;
bar_shrink = 0.22;

translate([0,-9,5])
rotate([-90,90,0])
union()
{
// right bar
color("DarkGray")
translate([18-(20.3*$t),-2.3+(2.3*$t),0+(2.8*$t)])
rotate([0,0,90])
cube([0.8-bar_shrink,13+(2*$t),0.8-bar_shrink],center=true);

// left bar
color("DarkGray")
translate([18-(20.2*$t),2.3-(9.8*$t),0+(9*$t)])
rotate([0+(90*$t),0,90])
cube([0.8-bar_shrink,13,0.8-bar_shrink],center=true);

// spine bar
color("DarkGray")
translate([-2.2*$t,+(7.5*$t),+(10*$t)])
rotate([0+(90*$t),0,90])
cube([0.8-bar_shrink,15,0.8-bar_shrink],center=true);

// neck bar
color("DarkGray")
rotate([0,90*$t,0])
translate([-12+(5.5*$t),0,0+(5*$t)])
cube([radius*2,0.8-bar_shrink,0.8-bar_shrink],center=true);

 
// middle
translate([10-(12.25*$t),0+(7.5*$t),18*$t])
color("black")
rotate([0,90*$t,0])
scale([1,1,0.15])
sphere(radius,$fn=40);

// bottom
translate([26-(28.25*$t),0-(7.5*$t),18*$t])
color("Black")
rotate([0,90*$t,0])
scale([1,1,0.15])
sphere(radius,$fn=40);

// top
translate([-5+(10*$t),0,12*$t])
color("Black")
rotate([0,90*$t,0])
scale([1,1,0.15])
sphere(radius,$fn=40);



// head
translate([-15+(6*$t),0,2.7*$t])
rotate([0,0,0])
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


// final form


circleThickness = 1;
radius = 3.8;
bar_shrink = 0.22;

translate([0,20,7.2])
union(){
color("DarkGray")
translate([7.5,-20,0])
rotate([0,0,0])
cube([0.8-bar_shrink,13,0.8-bar_shrink],center=true);

color("DarkGray")
translate([-7.5,-20,0])
rotate([0,0,0])
cube([0.8-bar_shrink,13,0.8-bar_shrink],center=true);


color("DarkGray")
translate([0,-26.2,0])
rotate([90,0,90])
cube([0.8-bar_shrink,15,0.8-bar_shrink],center=true);
}

color("DarkGray")
translate([0,-2.5,0])
rotate([0,0,90])
cube([radius*2,0.8-bar_shrink,0.8-bar_shrink],center=true);

 
translate([7.5,9,7.25])
color("Black")
scale([1,1,0.15])
sphere(radius,$fn=40);
translate([-7.5,9,7.25])
color("Black")
scale([1,1,0.15])
sphere(radius,$fn=40);
translate([0,3,0])
color("Black")
scale([1,1,0.15])
sphere(radius,$fn=40);



// head
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



















