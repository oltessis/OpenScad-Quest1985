
//triagon3d();

triagon_distance = 7;

module triagon3d() {

rot_angle = -360*$t+220;

scale(0.3){
rotate([0,360+rot_angle,0])
translate([0,0,triagon_distance])
color("LightCyan",0.3)
sphere(5,$fn=100);

rotate([0,240+rot_angle,0])
translate([0,0,triagon_distance-1])
color("DarkOrange",0.8)
rotate([720*$t,0,0])
cylinder(6.5, 5.5, 0, $fn=3);

rotate([0,120+rot_angle,0])
translate([0,0,triagon_distance])
color("#2E6256")
rotate([360*$t,360*$t,360*$t])
cube(5.7,center=true);
}
}
