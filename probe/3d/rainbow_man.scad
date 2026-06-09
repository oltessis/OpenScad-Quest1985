
// short length / neck is the circle diameter

circleThickness = 1;
circleDepth = 0.7;
radius = 3.8;
bar_shrink = 0.1;

// man is 30 tall 30 / 15 = 2, 15 sections 2 tall 



//man();
//have a big row of bars moving up for the end 

rainbow_colors = ["Blue","DarkOrange","Orange","Yellow","Green","Blue",
                  "DarkOrange","Yellow","Green","Blue","DarkOrange",
                  "Orange","Yellow","Blue","DarkOrange","Orange","Blue","DarkOrange","Orange","Yellow","Green","Blue",
                  "DarkOrange","Yellow","Green","Blue","Blue","DarkOrange","Orange","Yellow","Green","Blue",
                  "DarkOrange","Yellow","Green","Blue","Blue","DarkOrange","Orange","Yellow","Green","Blue",
                  "DarkOrange","Yellow","Green","Blue","Blue","DarkOrange","Orange","Yellow","Green","Blue",
                  "DarkOrange","Yellow","Green","Blue"];

for (i = [0:1:37]) {
    
  color(rainbow_colors[i])
  difference(){
  scale(1+(0.005*(i+1)))
  man();
  difference(){
        cube([25,10.2,200],center=true);
        translate([0,0,(i*2)+1+(50*$t)-30])
        cube([25.2,10.5,2],center=true);
    }
  }
}




   
/*
color("DarkOrange")
intersection() {
    difference(){
    man();
    translate([0,0,3])
    cube([20,10,0.1],center=true);
    }
    translate([0,0,2+1])
    cube([20,10,2],center=true);
}
*/ 




module man() {
   
color("Ivory")
translate([0,0,4])
union(){
rotate([-90,0,0])
union(){
translate([radius*1.5,0,0])
color("Black")
scale([1,1,circleDepth])
sphere(radius,$fn=40);
translate([-radius*1.5,0,0])
color("Black")
scale([1,1,circleDepth])
sphere(radius,$fn=40);


color("DarkGray")
translate([0,-6,0])
rotate([0,0,90])
cube([0.8-bar_shrink,15,0.8-bar_shrink],center=true);

translate([0,-12,0])
color("Black")
scale([1,1,circleDepth])
sphere(radius,$fn=40);

// arms 
color("DarkGray")
translate([6.7,-19.7,0])
rotate([0,0,30])
cube([0.8-bar_shrink,11,0.8-bar_shrink],center=true);

color("DarkGray")
translate([-6.7,-19.7,0])
rotate([0,0,-30])
cube([0.8-bar_shrink,11,0.8-bar_shrink],center=true);


color("DarkGray")
rotate([0,0,90])
translate([-18,0,0])
cube([radius*2,0.8-bar_shrink,0.8-bar_shrink],center=true);

translate([0,-21.5,0])
color("Black")
scale([1,1,circleDepth])
sphere(radius,$fn=40);
}
}
}









