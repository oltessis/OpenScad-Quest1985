
temple_lintel();

module temple_lintel() {
 


color("DodgerBlue")
translate([0,0,0])
rotate([90,0,0])        // rotate the *3D solid*
    linear_extrude(height=3, center=true)
        arc_band(
            r_outer = 15,
            r_inner = 14.8,
            a0 = 20,
            a1 = 160,
            steps = 20
        );



color("DarkOrange")
translate([14,0,4])
cylinder(0.1, 1.5, 1.5, $fn=14,center=true);

color("DarkOrange")
translate([-14,0,4])
cylinder(0.1, 1.5, 1.5, $fn=14,center=true);

color("khaki")
translate([14,0,3.3])
cube([3, 3, 0.2], center=true);

color("khaki")
translate([-14,0,3.3])
cube([3, 3, 0.2], center=true);
}



function arc_points(r, a0, a1, steps=64) =
    [ for (i=[0:steps])
        let(a = a0 + (a1-a0)*i/steps)
        [r*cos(a), r*sin(a)]
    ];


module arc_band(r_outer, r_inner, a0, a1, steps=64) {
    polygon(
        concat(
            arc_points(r_outer, a0, a1, steps),
            [ for (i = [steps : -1 : 0])
                arc_points(r_inner, a0, a1, steps)[i]
            ]
        )
    );
}





