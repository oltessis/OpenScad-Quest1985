
// short length / neck is the circle diameter


circleThickness = 1;
radius = 3.8;
bar_shrink = 0.22;


module probe_hands() {
    
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

}

 
translate([7.5,9-(2),7.25-(2.5)])
rotate([-90,0,-45*$t])
color("Black")
scale([1,1,0.15])
sphere(radius,$fn=40);
translate([-7.5,9-(2),7.25-(2.5)])
rotate([-90,0,45*$t])
color("Black")
scale([1,1,0.15])
sphere(radius,$fn=40);


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
