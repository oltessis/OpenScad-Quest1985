

triagon_distance = 7;

rotate([0,360,0])
translate([0,0,triagon_distance])
color("LightCyan",0.3)
sphere(5,$fn=100);

rotate([0,240,0])
translate([0,0,triagon_distance-1])
color("DarkOrange",0.8)
cylinder(6.5, 5.5, 0, $fn=3);

rotate([0,120,0])
translate([0,0,triagon_distance])
color("#2E6256")
cube(5.7,center=true);
