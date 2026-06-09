
include <parametric_space.scad>
include <game_board.scad>
include <triagon2d.scad>
include <2dprobe1.scad>
include <2dprobe2.scad>
include <2dprobe3.scad>

// module parametric_space(seed=36,density=2500,size=200,sp_radius=0.7) {

translate([0,2800-(3555),-180+(210)])
rotate([5-(5),0,0])
game_board();

translate([0,2800-(3555)+648.5,-180+(210)-(25)])
rotate([5-(5),0,0])
{
translate([0,-31,26.05])
rotate([180,0,30])
scale(0.3)
triagon2d();


// probe ring 
pivot_point = [0,-31,27]; 
rotate_index = 523+(8*$t); // 15 deg per cycle
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
// used up

// number 5 
translate(pivot_point)
rotate([0,0,rotate_index+(rotate_step*5)])
translate([probe_distance,0,0])
scale(probe_scale)
_2dprobe2();

// number 6 
// the final probe, active in the final
translate(pivot_point)
rotate([0,0,270])
translate([probe_distance-7-6-11-9-(6*$t),0,-1])
scale(probe_scale)
rotate([0,0,-85+85])
_2dprobe3();


// number 7 
translate(pivot_point)
rotate([0,0,rotate_index+(rotate_step*7)+probe1_factor])
translate([probe_distance,0,0])
scale(probe_scale)
rotate([0,0,180])
_2dprobe1();


// number 8 
// used up

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




translate([0,-9000,0])
parametric_space(36,3000,5000,6);

//translate([8000,3000,0])
//parametric_space(36,3000,5000,6);

translate([-8000,1000,0])
parametric_space(36,3000,5000,6);

// under stars
//translate([0,0,-8000])
//parametric_space(36,5000,5000,6);


//scale(0.7)
//translate([-3,-100,-50])
//quest_logo1();

// at 0.97 artifacts show up


$vpt = [-22.86, -172.16, 33.6];   // camera position
$vpr = [80, 0.00, 107.6];    // rotation
$vpd = 213;                  // distance from camera
$fov = 22.50;                   // field of view (perspective only)





