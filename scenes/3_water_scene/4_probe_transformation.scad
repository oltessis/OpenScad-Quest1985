

include <border_conifer.scad>
include <bouncy_column.scad>
include <triangle.scad>
include <triangle_to_fish.scad>


$vpt = [-5, -22, -0.15];   // camera position
$vpr = [85, 0, 351];    // rotation
$vpd = 70;                  // distance from camera
$vpf = 22;                   // field of view (perspective only)


translate([-13+(1.5*$t),-70-(4*$t),1+(0.5*$t)])
rotate([0,4,-100+(30*$t)])
scale(0.1)
triangle_to_fish();

union(){
translate([0,0,0])
color("#3D2F2A")
cylinder(40, 5, 0, $fn=20);
translate([3,-7,0])
color("#3D2F2A")
cylinder(40, 5, 0, $fn=20);
translate([-5,8,0])
color("#3D2F2A")
cylinder(28, 6, 0, $fn=20);
translate([-6,0,0])
color("#3D2F2A")
cylinder(25, 5, 0, $fn=20);
translate([-4,-6,0])
color("#3D2F2A")
cylinder(30, 5, 0, $fn=20);
translate([-3,-12,0])
color("#3D2F2A")
cylinder(40, 5, 0, $fn=20);
translate([3,-18,0])
color("#3D2F2A")
cylinder(25, 5, 0, $fn=20);
translate([-10,-16,0])
color("#3D2F2A")
cylinder(10, 6, 0, $fn=20);
translate([-13,-10,0])
color("#3D2F2A")
cylinder(15, 6, 0, $fn=20);
translate([-13,-2,0])
color("#3D2F2A")
cylinder(20, 6, 0, $fn=20);
translate([-10,5,0])
color("#3D2F2A")
cylinder(30, 5, 0, $fn=20);
translate([-17,11,0])
color("#3D2F2A")
cylinder(24, 5, 0, $fn=20);
translate([-23,12,0])
color("#3D2F2A")
cylinder(15, 5, 0, $fn=20);
}

union(){
translate([21,-28,0])
color("#3D2F2A")
cylinder(40, 5, 0, $fn=20);
translate([28,-29,0])
color("#3D2F2A")
cylinder(30, 5, 0, $fn=20);
translate([41,-32,0])
color("#3D2F2A")
cylinder(28, 5, 0, $fn=20);
translate([41,-40,0])
color("#3D2F2A")
cylinder(38, 4, 0, $fn=20);
translate([48,-40,0])
color("#3D2F2A")
cylinder(40, 5, 0, $fn=20);
translate([34,-40,0])
color("#3D2F2A")
cylinder(20, 5, 0, $fn=20);
translate([48,-49,0])
color("#3D2F2A")
cylinder(30, 5, 0, $fn=20);
translate([34,-49,0])
color("#3D2F2A")
cylinder(27, 5, 0, $fn=20);
translate([40,-48,0])
color("#3D2F2A")
cylinder(24, 5, 0, $fn=20);
translate([40,-56,0])
color("#3D2F2A")
cylinder(15, 5, 0, $fn=20);
translate([31,-58,0])
color("#3D2F2A")
cylinder(20, 5, 0, $fn=20);
translate([24,-57,0])
color("#3D2F2A")
cylinder(10, 5, 0, $fn=20);
translate([26,-50,0])
color("#3D2F2A")
cylinder(18, 5, 0, $fn=20);
translate([31,-65,0])
color("#3D2F2A")
cylinder(25, 5, 0, $fn=20);
translate([47,-64,0])
color("#3D2F2A")
cylinder(40, 5, 0, $fn=20);
}

translate([-4,-12,0])
union(){
translate([0,-54,0])
scale(0.3){
translate([0,0,0])
color("#3D2F2A")
cylinder(48, 5, 0, $fn=20);
translate([3,-7,0])
color("#3D2F2A")
cylinder(52, 5, 0, $fn=20);
translate([-5,8,0])
color("#3D2F2A")
cylinder(60, 6, 0, $fn=20);
translate([-6,0,0])
color("#3D2F2A")
cylinder(35, 5, 0, $fn=20);
translate([-4,-6,0])
color("#3D2F2A")
cylinder(30, 5, 0, $fn=20);
translate([-3,-12,0])
color("#3D2F2A")
cylinder(38, 5, 0, $fn=20);
translate([3,-18,0])
color("#3D2F2A")
cylinder(28, 5, 0, $fn=20);
translate([-10,-16,0])
color("#3D2F2A")
cylinder(25, 6, 0, $fn=20);
translate([-13,-10,0])
color("#3D2F2A")
cylinder(20, 6, 0, $fn=20);
translate([-13,-2,0])
color("#3D2F2A")
cylinder(32, 6, 0, $fn=20);
translate([-10,5,0])
color("#3D2F2A")
cylinder(45, 5, 0, $fn=20);
translate([-17,11,0])
color("#3D2F2A")
cylinder(35, 5, 0, $fn=20);
translate([-23,12,0])
color("#3D2F2A")
cylinder(50, 5, 0, $fn=20);
}
}


// platform
translate([0,400,0])
color("MistyRose")
difference(){
  
  translate([0,600,0])
  rotate([0,0,45])
  cylinder(600, 200, 0, $fn=4);
  translate([0,600,400])
  cube([500,500,500],center=true);
}


seed = 12345;
positions_x = rands(-160, 160,150,seed);
positions_y = rands(-50, 50,150,seed+1);
r_height = rands(30,110,150,seed+2);
// random coast
color("#3D2F2A")
for (i = [0:1:150]) {
    
translate([positions_x[i],positions_y[i]+800,0])
cylinder(r_height[i], 8, 0, $fn=15);

}


for (i = [900:10:1100]) {
    
translate([90,i,150])
scale(3)
border_conifer();
translate([-93,i,150])
scale(3)
border_conifer();

}

translate([8,900,150])
scale(0.15)
bouncy_column();
translate([-15,900,150])
scale(0.15)
bouncy_column();



function pad3(n) = 
    n < 10 ? str("00", n) :
    n < 100 ? str("0", n) :
    str(n);

frame = floor($t * 60);
translate([-149,0,0.25])
scale([1,1,0.03])
color("RoyalBlue",0.2)
surface(
    file = str("ripple_frames/ripple_", pad3(frame), ".png"),
    center = true,
    convexity = 5
);

translate([50,0,0.25])
scale([1,1,0.03])
color("RoyalBlue",0.2)
surface(
    file = str("ripple_frames/ripple_", pad3(frame), ".png"),
    center = true,
    convexity = 5
);

translate([-149,-199,0.25])
scale([1,1,0.03])
color("RoyalBlue",0.2)
surface(
    file = str("ripple_frames/ripple_", pad3(frame), ".png"),
    center = true,
    convexity = 5
);

translate([50,-199,0.25])
scale([1,1,0.03])
color("RoyalBlue",0.2)
surface(
    file = str("ripple_frames/ripple_", pad3(frame), ".png"),
    center = true,
    convexity = 5
);



//color("Blue") // for overhead shot
color("Navy")
cube([10000,10000,1],center=true);









