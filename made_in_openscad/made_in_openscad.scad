

rotate([4,5,42])
union(){
difference(){
color("#FFF662")
sphere(5,$fn=150);

rotate([0,0,90])
cylinder(20, 2.52, 2.52, $fn=40,center=true);
rotate([0,90,0])
cylinder(20, 2.52, 2.52, $fn=40,center=true);
rotate([90,0,0])
cylinder(20, 2.52, 2.52, $fn=40,center=true);
}



color("PaleGreen")
difference(){
union(){
rotate([0,0,90])
cylinder(8.6, 2.52, 2.52, $fn=40,center=true);
rotate([0,90,0])
cylinder(8.6, 2.52, 2.52, $fn=40,center=true);
rotate([90,0,0])
cylinder(8.6, 2.52, 2.52, $fn=40,center=true);
}

rotate([0,0,90])
cylinder(20, 2.5, 2.5, $fn=50,center=true);
rotate([0,90,0])
cylinder(20, 2.5, 2.5, $fn=50,center=true);
rotate([90,0,0])
cylinder(20, 2.5, 2.5, $fn=50,center=true);
}

//color("DarkRed",0.5)
color("FireBrick",0.35)
rotate([90,0,0])
cylinder(13, 2.5, 2.5, $fn=50,center=true);

//color("FireBrick",0.5)
//translate([0,0,30])
//rotate([0,0,90])
//cylinder(13, 2.5, 2.5, $fn=50,center=true);
}



// text 
color("Chartreuse")
translate([0,-18,-20])
scale(0.5)
rotate([90,0,90])
text("Open");

color("Beige")
translate([0,0,-20])
scale(0.5)
rotate([90,0,90])
text("SCAD");

rotate([0,0,360])
color("Beige")
translate([0,-12,20])
scale(0.5)
rotate([90,0,90])
text("Made in");






