

triagon_distance = 5.5;


rotate([0,0,120])
translate([triagon_distance,0,0])
regular_star(1.5,3,3);

rotate([0,0,240])
translate([triagon_distance,0,0])
cylinder(1, 3, 3, $fn=30,center=true);

rotate([0,0,360])
translate([triagon_distance,0,0])
cube([4.5,4.5,1],center=true);



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

