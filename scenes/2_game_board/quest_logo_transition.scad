
include <space.scad>


include <quest_logo1.scad>

scale(0.6)
translate([-3,-100,-50])
quest_logo1();


$vpt = [-2.93, 0.03, -0.76];   // camera position
$vpr = [89.30, 0.00, 1.20];    // rotation
$vpd = 167.46;                  // distance from camera
$fov = 22.50;                   // field of view (perspective only)

