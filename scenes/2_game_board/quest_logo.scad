


translate([0,0,30])
{
color("#E0D44A")
{
translate([-20,0,22])
rotate([90,0,0])
semicircle(7,2);
translate([-19,0,22])
rotate([90,0,180])
semicircle(7,2);
translate([-14.5,2,17])
rotate([0,45,0])
cube([7,2,2],center=true);
translate([-4,0,21])
rotate([90,-90,0])
semicircle(6,2);
translate([-9,0,25.25])
cube([2,2,7.4],center=true);
translate([1,0,25.25])
cube([2,2,7.4],center=true);
translate([5.5,0,22])
cube([2,2,14],center=true);
translate([11.5,0,16])
cube([9,2,2],center=true);
translate([11.5,0,28])
cube([9,2,2],center=true);
translate([9.5,0,22])
cube([4.5,2,2],center=true);
translate([24,0,19.5])
rotate([90,180,0])
semicircle(4.5,2);
translate([21,0,25.5])
rotate([90,0,0])
semicircle(3.5,2);
translate([22.5,0,23])
cube([2.3,2,2],center=true);
translate([20.5,0,16])
cube([6.3,2,2],center=true);
translate([23.5,0,28])
cube([4.25,2,2],center=true);
translate([33,0,28])
cube([11,2,2],center=true);
translate([33,0,20.8])
cube([2,2,11.6],center=true);
}

color("DarkOrange",(0.8))
translate([-18,0,1])
rotate([90,0,0])
scale([0.4,0.3,0.4])
union(){
text("A Long Ray's Journey",font="Times New Roman");
translate([30,-14,0])
text("Into Light",font="Times New Roman");
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
