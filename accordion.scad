

module accordion() {
    
color("Yellow")
translate([0,0,4.5])
rotate([90,0,0])
cylinder(16.5, 0.25, 0.25, $fn=8,center=true);

color("SteelBlue")
translate([0, 9.5, 4.8]) 
sphere(0.65,$fn=20);

color("SteelBlue")
translate([0, -9.5, 4.8]) 
sphere(0.65,$fn=20);

color("LightSteelBlue")
rotate([0,-45,0])
translate([0,0,2.5])
union()
{
cube([5,20,0.5],center=true);

for (i = [-3:1:3]) {
    translate([0,3*i,0.5])
    cube([5,0.5,0.2],center=true);
}
}

color("LightSteelBlue")
rotate([0,45,0])
translate([0,0,2.5])
union()
{
cube([5,20,0.5],center=true);

for (i = [-3:1:3]) {
    translate([0,3*i,0.5])
    cube([5,0.5,0.5],center=true);
}
}

color("Violet")
for (i = [-9:2.25:9]) {
    translate([0,i,-0.1])
    cube([8,0.9,0.2],center=true);
}

color("Violet")
for (i = [-1.5:1:1.5]) {
 translate([2*i,0,0])
 cube([0.9,21.4,0.2],center=true);   
}

// hood end
translate([0,9.8,0]){

color("Yellow")
translate([0,0,1.3])
cube([1.6,0.2,2.5],center=true);
color("Chocolate")
translate([0,0.1,1.3])
cube([0.3,0.2,2.2],center=true);
color("Chocolate")
translate([0.46,0.1,1.3])
cube([0.3,0.2,2.2],center=true);
color("Chocolate")
translate([-0.46,0.1,1.3])
cube([0.3,0.2,2.2],center=true);
color("Yellow")
translate([-1.35,0,0.7])
cube([1.15,0.1,1.15],center=true);
color("Yellow")
translate([1.35,0,0.7])
cube([1.15,0.1,1.15],center=true);
color("Orchid")
translate([-1.35,0.1,0.7])
cube([0.9,0.1,0.9],center=true);
color("Orchid")
translate([1.35,0.1,0.7])
cube([0.9,0.1,0.9],center=true);
color("Yellow")
translate([0,0,0.2])
cube([6.5,0.2,0.2],center=true);

color("MediumOrchid")
translate([0,-0.2,0])
difference()
{
rotate([0,45,0])
cube([5,0.2,5],center=true);
translate([0,0,-4])
cube([8,8,8],center=true);
}
}

translate([0,-9.8,0])
rotate([0,0,180])
union(){

color("Yellow")
translate([0,0,1.3])
cube([1.6,0.2,2.5],center=true);
color("Chocolate")
translate([0,0.1,1.3])
cube([0.3,0.2,2.2],center=true);
color("Chocolate")
translate([0.46,0.1,1.3])
cube([0.3,0.2,2.2],center=true);
color("Chocolate")
translate([-0.46,0.1,1.3])
cube([0.3,0.2,2.2],center=true);
color("Yellow")
translate([-1.35,0,0.7])
cube([1.15,0.1,1.15],center=true);
color("Yellow")
translate([1.35,0,0.7])
cube([1.15,0.1,1.15],center=true);
color("Orchid")
translate([-1.35,0.1,0.7])
cube([0.9,0.1,0.9],center=true);
color("Orchid")
translate([1.35,0.1,0.7])
cube([0.9,0.1,0.9],center=true);
color("Yellow")
translate([0,0,0.2])
cube([6.5,0.2,0.2],center=true);

color("MediumOrchid")
translate([0,-0.2,0])
difference()
{
rotate([0,45,0])
cube([5,0.2,5],center=true);
translate([0,0,-4])
cube([8,8,8],center=true);
}
}
}



