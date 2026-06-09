
tr = 1 - $t;

module quest_logo1() {
    
translate([0,0,30])
{
color("#E0D44A")
{
// letter Q
translate([-20+(5*tr),0,22-(15*tr)])
rotate([90-(90*tr),0-(60*tr),-90*tr])
semicircle(7,2);
translate([-19,0,22-(3*tr)])
rotate([90-(250*tr),10*tr,180-(270*tr)])
semicircle(7,2);
pivot1 = [-11.5,2,14];
translate([0,0,-10*tr]){
translate(pivot1)
rotate([0,-360*tr,5*tr])
translate([-13.5,2,16]-pivot1)
rotate([0,45,0])
cube([3,2,2],center=true);}
pivot2 = [-14.5,2,17];
translate([0,0,-10*tr]){
translate(pivot2)
rotate([0,360*tr,4*tr])
translate([-16.5,2,19]-pivot2)
rotate([0,45,0])
cube([2,2,2],center=true);}

// letter U
translate([-4,6*tr,21-(4*tr)])
rotate([90,-90-(15*tr),160*tr])
semicircle(6,2);
pivot3 = [-7,2,23.25];
translate(pivot3)
rotate([-10,0,-170*tr])
translate([-9,0,25.25+(5*tr)]-pivot3)
cube([2,2,7.4],center=true);
translate([1,0-(4*tr),25.25-(8*tr)])
rotate([310*tr,80*tr,15*tr])
cube([2,2,7.4],center=true);

// letter E
translate([5.5,2+(4*tr),22])
rotate([10*tr,10*tr,23*tr])
cube([2,2,14],center=true);
pivot4 = [11.5,2,22];
translate(pivot4)
rotate([15*tr,-90*tr,-3*tr])
translate([11.5,5*tr,16]-pivot4)
cube([9,2,2],center=true);
translate(pivot4)
rotate([0,-90*tr,8*tr])
translate([11.5,5*tr,28]-pivot4)
cube([9,2,2],center=true);
translate([9.5,10*tr,22-(4*tr)])
rotate([13*tr,0,-80*tr])
cube([4.5,2,2],center=true);

// letter S
translate([24,8*tr,19.5])
rotate([90-(70*tr),180-(30*tr),0])
semicircle(4.5,2);
translate([21,8*tr,25.5-(3*tr)])
rotate([90+(75*tr),14*tr,0])
semicircle(3.5,2);
translate([22.5,10*tr,23])
rotate([0,-40*tr,60*tr])
cube([2.3,2,2],center=true);
translate([20.5,8*tr,16])
rotate([-22*tr,0,-77*tr])
cube([6.3,2,2],center=true);
translate([23.5,10*tr,28-(20*tr)])
rotate([140*tr,0,0])
cube([4.25,2,2],center=true);

// letter T 
translate([33-(4*tr),0,28-(4*tr)])
rotate([0,-10*tr,-80*tr])
cube([11,2,2],center=true);
translate([33-(4*tr),0,20.8+(6*tr)])
rotate([80*tr,0,9*tr])
cube([2,2,11.6],center=true);
}

//color("DarkOrange",0.9)
//translate([-18,0,1])
//rotate([90,0,0])
//scale([0.4,0.3,0.4])
//union(){
//text("A Long Ray's Journey",font="Times New Roman");
//translate([30,-14,0])
//text("Into Light",font="Times New Roman");
}
}




module semicircle(radius=4,height=1) {
    
difference() {
    cylinder(height, radius, radius, $fn=30,center=true);
    cylinder(height+0.2, radius-2, radius-2, $fn=30,center=true);
    translate([radius,0,0])
    cube([(radius*2),(radius*2),height+1],center=true);
}
}
