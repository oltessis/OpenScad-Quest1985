
// short length / neck is the circle diameter

circleThickness = 1;
radius = 3.8;

helicopter_top();

module helicopter_top() {
        
    for (i = [0:120:360]) {
        
    color("DarkGray")
    translate([0,0,radius*2])
    rotate([25-(15*$t),0,90+i+(360)])
    translate([0,7.5,0])
    cube([0.8,15,0.6],center=true);
    }



    // black smarties
    for (i = [0:120:360]) {
    translate([0,0,14-(4*$t)])
    rotate([0,0,i+60+(360)])  
    translate([13.5,0,0])
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
