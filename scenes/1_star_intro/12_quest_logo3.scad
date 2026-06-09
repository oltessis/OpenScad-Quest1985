
tr = 1 - $t;

module quest_logo3() {
    
translate([11*tr,0,45*tr])
scale(1-(0.8*tr))
translate([0,0,30])
color("#E0D44A")
{
// letter Q
translate([-20+5,0,22-15])
rotate([-40,-60-75,-90+90])
semicircle(7,2);
translate([-19+5,5,19+15])
rotate([-160-30,10-40,180-270])
semicircle(7,2);
pivot1 = [-11.5,2,14];
translate([0,0,-10]){
translate(pivot1)
rotate([0,-360+800,5])
translate([-13.5-4,2,16-4]-pivot1)
rotate([0,45,0])
cube([3,2,2],center=true);}
pivot2 = [-14.5+4,2,17+17];
translate([0,0,-10]){
translate(pivot2)
rotate([0,360-800,4])
translate([-16.5+4,2,19+17]-pivot2)
rotate([0,45,0])
cube([2,2,2],center=true);}

// letter U
translate([-4,6+4,21-4])
rotate([90,-90-15,160])
semicircle(6,2);
pivot3 = [-7,2,23.25];
translate(pivot3)
rotate([-10-150,0+80,-170])
translate([-9-2,0,30.25-8]-pivot3)
cube([2,2,7.4],center=true);
translate([1,0-4,25.25-8+25])
rotate([310+110,80+50,15-70])
cube([2,2,7.4],center=true);

// letter E
translate([5.5,6+10,22])
rotate([10+120,10,25-19])
cube([2,2,14],center=true);
translate([5.1+5,4.2,22-19])
rotate([0,90-200,6])
cube([9,2,2],center=true);
translate([16.9-5,6.3,22+19])
rotate([0,90-200,12])
cube([9,2,2],center=true);
translate([9.5,10+(8*tr),22-4])
rotate([13+10,0,-80-10])
cube([4.5,2,2],center=true);


// letter S
translate([24,8,19.5+17])
rotate([20-50,180-30,0])
semicircle(4.5,2);
translate([21,8,22.5+6])
rotate([165+40,14+10,0])
semicircle(3.5,2);
translate([22.5-3,10,23])
rotate([0,-40,60])
cube([2.3,2,2],center=true);
translate([20.5,8-2.5,16+2])
rotate([-22,0,-77])
cube([6.3,2,2],center=true);
translate([23.5,10,8-3])
rotate([140,0,0])
cube([4.25,2,2],center=true);

// letter T 
translate([33-4+6,0,28-4])
rotate([0,-10-20,-80-60])
cube([11,2,2],center=true);
translate([33-4+6,0,26.8+6])
rotate([80+50,0,9-20])
cube([2,2,11.6],center=true);
}
}

//color("DarkOrange",0.9)
//translate([-18,0,1])
//rotate([90,0,0])
//scale([0.4,0.3,0.4])
//union(){
//text("A Long Ray's Journey",font="Times New Roman");
//translate([30,-14,0])
//text("Into Light",font="Times New Roman");


module semicircle(radius=4,height=1) {
    
difference() {
    cylinder(height, radius, radius, $fn=30,center=true);
    cylinder(height+0.2, radius-2, radius-2, $fn=30,center=true);
    translate([radius,0,0])
    cube([(radius*2),(radius*2),height+1],center=true);
}
}
