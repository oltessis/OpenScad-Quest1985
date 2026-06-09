


module triagon2d() {
    
    color("#FFF1E6")
    {
    triagon_distance = 5;

    rotate([0,0,120])
    translate([triagon_distance,0,0])
    rotate([0,0,28])
    scale(1.1)
    regular_star(1.5,3,3);

    rotate([0,0,240])
    translate([triagon_distance,0,0])
    cylinder(0.9, 2.95, 2.95, $fn=80,center=true);

    rotate([0,0,360])
    translate([triagon_distance,0,0])
    rotate([0,0,32])
    cube([4.35,4.35,1],center=true);
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
}

