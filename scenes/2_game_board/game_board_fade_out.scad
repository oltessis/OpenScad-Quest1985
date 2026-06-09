
// just comment this out when editing the module
//game_board();
correction = 71.5;


module game_board(mut_radius=0.5, alpha=1.0) {

// base board

difference(){
union(){
color("#3A3A3A",alpha)
difference(){
translate([0,234-(100),0])
cube([1000,2000,0.1],center=true);
translate([0,546,0])
cylinder(10, 1.81, 1.81, $fn=25,center=true);
}


// vertical
translate([-4,234-(100),0])
union(){
difference(){
union()
{
for (i = [-500:24:500]) {
  color("#888888",alpha)
  translate([i,0,0.5])
  cube([3,2000,0.05],center=true);
 }
}

translate([0,546,0])
cylinder(10, mut_radius, mut_radius, $fn=10,center=true);
}
}


// horizontal

translate([0,234-(104.5),0])
union(){
for (i = [-1000:24:1000]) {
  color("#888888",alpha)
  translate([0,i,0.5])
  cube([1000,3,0.05],center=true);   
}
}
}
translate([0,546+correction,0])
cylinder(10, mut_radius, mut_radius, $fn=25,center=true);
}


}





