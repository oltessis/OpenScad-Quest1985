

//cube_sheet();

module cube_sheet() {
    
color("Tan",0.4)
for (j = [-10:2.3:10]) {
 for (i = [-10:2.3:10]) {
 translate([i,0,j])
 rotate([0,45*sin(360),135*sin(360)])
 cube(2,center=true);   
} 
}
}
