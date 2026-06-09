
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


module bike_animation() {
        
    // short length / neck is the circle diameter

    circleThickness = 1;
    radius = 3.8;
    bar_shrink = 0.22;

    angle = 130+(30*sin(360*$t));
    bar_length = 13;
    half_bar = bar_length/2;
    arm_radius = radius - 1.4;
    angular_offset = 180;

    rotate([-90,0,0])
    union(){
    // bike leg front 
    color("DarkGray")
    hull()
    {
    translate([arm_radius*sin(-360*$t),arm_radius*cos(-360*$t),0])
    translate([7.5,0,1])
    rotate([0,0,45])
    cube([0.8-bar_shrink,0.8-bar_shrink,0.8-bar_shrink],center=true);

    translate([0,-8,1])
    rotate([0,0,45])
    cube([0.8-bar_shrink,0.8-bar_shrink,0.8-bar_shrink],center=true);
    }


    color("DarkGray")
    hull()
    {
    translate([arm_radius*sin(-360*$t+angular_offset),arm_radius*cos(-360*$t+angular_offset),0])
    translate([-7.5,0,1])
    rotate([0,0,45])
    cube([0.8-bar_shrink,0.8-bar_shrink,0.8-bar_shrink],center=true);

    translate([0,-8,1])
    rotate([0,0,45])
    cube([0.8-bar_shrink,0.8-bar_shrink,0.8-bar_shrink],center=true);
    }


    color("DarkGray")
    translate([0,0,0])
    rotate([0,0,90])
    cube([0.8-bar_shrink,15,0.8-bar_shrink],center=true);

    // neck
    color("DarkGray")
    rotate([0,0,90])
    translate([-12,0,0])
    cube([radius*2,0.8-bar_shrink,0.8-bar_shrink],center=true);


    // front wheel 
    rotation_center1 = [7.5,0,0];
    translate(rotation_center1)
    color("Black")
    scale([1,1,0.15])
    sphere(radius,$fn=40);
    // back wheel 
    rotation_center2 = [-7.5,0,0];
    translate(rotation_center2)
    color("Black")
    scale([1,1,0.15])
    sphere(radius,$fn=40);
    // seat
    translate([0,-8,0])
    color("Black")
    scale([1,1,0.15])
    sphere(radius,$fn=40);
    }






    triagon_distance = 3.5;
    xtra_rotation = -30;
    wall_thickness = 0.5;


    // head
    translate([0,0,15])
    rotate([0,90,0])
    union(){
    translate([-4.5,1.3,0.9])
    rotate([-5,-5,0])
    scale(0.25)
    union(){

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
    scale([1,1,0.3])
    sphere(radius,$fn=40);
    }
}
