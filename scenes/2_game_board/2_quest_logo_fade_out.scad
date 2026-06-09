
include <parametric_space.scad>
include <game_board.scad>

parametric_space(alpha=1-$t);

// module parametric_space(seed=36,density=2500,size=200,sp_radius=0.7) {

translate([0,9500,0])
parametric_space(36,3000,5000,6,$t);

translate([8000,3000,0])
parametric_space(36,3000,5000,6,$t);

translate([-8000,3000,0])
parametric_space(36,3000,5000,6,$t);



scale(0.6)
translate([-3,-100,-50])
include <quest_logo_fade_out.scad>



translate([0,2800,-180])
rotate([5,0,0])
game_board();
//scale(0.7)
//translate([-3,-100,-50])
//quest_logo1();

$vpt = [-2.93, 0.03, -0.76];   // camera position
$vpr = [89.30, 0.00, 1.20];    // rotation
$vpd = 167.46;                  // distance from camera
$fov = 22.50;                   // field of view (perspective only)







