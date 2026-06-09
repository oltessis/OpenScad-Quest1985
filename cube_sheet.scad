

cube_sheet();

module cube_sheet() {
    
color("Beige",0.2)
for (j = [-10:2.3:10]) {
 for (i = [-10:2.3:10]) {
 translate([i,0,j])
 cube(2,center=true);   
} 
}
}
