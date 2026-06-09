
include <parametric_space.scad>
include <game_board.scad>
include <triagon2d.scad>
include <2dprobe1.scad>
include <2dprobe2.scad>
include <2dprobe3.scad>

// module parametric_space(seed=36,density=2500,size=200,sp_radius=0.7) {

translate([0,2800-(3555)+648.5,-180+(210)-(25)])
rotate([5-(5),0,0])
{
translate([0,-31,26.05])
rotate([180,0,30])
scale(0.3)
triagon2d();


// probe ring 
pivot_point = [0,-31,27]; 
rotate_index = 380 + ($t*3); // 15 deg per cycle
rotate_step = 22.5;
probe1_factor = 5;
probe_scale = 0.6;
probe_distance = 57;

// number 1 
translate(pivot_point)
rotate([0,0,rotate_index+(rotate_step*1)])
translate([probe_distance,0,0])
scale(probe_scale)
_2dprobe2();

// number 2 
translate(pivot_point)
rotate([0,0,rotate_index+(rotate_step*2)+probe1_factor])
translate([probe_distance,0,0])
scale(probe_scale)
rotate([0,0,180])
_2dprobe1();

// number 3 
translate(pivot_point)
rotate([0,0,rotate_index+(rotate_step*3)+probe1_factor])
translate([probe_distance,0,0])
scale(probe_scale)
rotate([0,0,180])
_2dprobe1();

// number 4 
// active prope in this animation 
translate(pivot_point)
rotate([0,0,450])
translate([probe_distance-6-42-4,0,0])
scale(probe_scale)
rotate([0,0,180+(90)])
_2dprobe1();

translate(pivot_point)
rotate([0,0,450])
translate([probe_distance-50,0,0])
color("white",0.5+(0.4*$t))
sphere(4+(4*$t),$fn=100);

// number 5 
translate(pivot_point)
rotate([0,0,rotate_index+(rotate_step*5)])
translate([probe_distance,0,0])
scale(probe_scale)
_2dprobe2();

// number 6 
translate(pivot_point)
rotate([0,0,rotate_index+(rotate_step*6)])
translate([probe_distance,0,0])
scale(probe_scale)
rotate([0,0,-85])
_2dprobe3();


// number 7 
translate(pivot_point)
rotate([0,0,rotate_index+(rotate_step*7)+probe1_factor])
translate([probe_distance,0,0])
scale(probe_scale)
rotate([0,0,180])
_2dprobe1();

// number 8 
translate(pivot_point)
rotate([0,0,rotate_index+(rotate_step*8)])
translate([probe_distance,0,0])
scale(probe_scale)
_2dprobe2();

// number 9 
translate(pivot_point)
rotate([0,0,rotate_index+(rotate_step*9)+probe1_factor])
translate([probe_distance,0,0])
scale(probe_scale)
rotate([0,0,180])
_2dprobe1();

// number 10
translate(pivot_point)
rotate([0,0,rotate_index+(rotate_step*10)+probe1_factor])
translate([probe_distance,0,0])
scale(probe_scale)
rotate([0,0,180])
_2dprobe1();

// number 11 
translate(pivot_point)
rotate([0,0,rotate_index+(rotate_step*11)+probe1_factor])
translate([probe_distance,0,0])
scale(probe_scale)
rotate([0,0,180])
_2dprobe1();

// number 12
translate(pivot_point)
rotate([0,0,rotate_index+(rotate_step*12)+probe1_factor])
translate([probe_distance,0,0])
scale(probe_scale)
rotate([0,0,180])
_2dprobe1();


// number 13
translate(pivot_point)
rotate([0,0,rotate_index+(rotate_step*13)])
translate([probe_distance,0,0])
scale(probe_scale)
_2dprobe2();


// number 14 


// number 15
translate(pivot_point)
rotate([0,0,rotate_index+(rotate_step*15)+probe1_factor])
translate([probe_distance,0,0])
scale(probe_scale)
rotate([0,0,180])
_2dprobe1();

// number 16 
translate(pivot_point)
rotate([0,0,rotate_index+(rotate_step*16)])
translate([probe_distance,0,0])
scale(probe_scale)
_2dprobe2();
}




translate([0,9500,0])
parametric_space(36,3000,5000,6);

//translate([8000,3000,0])
//parametric_space(36,3000,5000,6);

translate([-8000,1000,0])
parametric_space(36,3000,5000,6);

// under stars
//translate([0,0,-8000])
//parametric_space(36,5000,5000,6);


translate([0,2800-(3555),-180+(210)])
rotate([5-(5),0,0])
game_board();
//scale(0.7)
//translate([-3,-100,-50])
//quest_logo1();

// at 0.97 artifacts show up


$vpt = [13.34, -140.52, 48.57];   // camera position
$vpr = [76, 0.00, 65.9];    // rotation
$vpd = 68.21;                  // distance from camera
$fov = 22.50;                   // field of view (perspective only)






