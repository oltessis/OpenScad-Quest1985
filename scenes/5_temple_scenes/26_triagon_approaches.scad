
include <border_conifer.scad>
include <accordion.scad>
include <cube_lattice_building.scad>
include <noise_circle.scad>
include <rotating_pyramid.scad>
include <frontal_building.scad>
include <short_bouncy_column.scad>
include <bouncy_column.scad>
include <sirpinski_structure.scad>
include <front_temple_column.scad>
include <temple_lantern.scad>
include <temple_column.scad>
include <temple_lintel.scad>
include <temple_sanctum_column.scad>
include <temple_sanctum_column2.scad>
include <outer_dome.scad>
include <outer_hedge.scad>
include <game_board/game_board.scad>
include <decorative_tree4_lowres.scad>
include <decorative_tree4.scad>
include <temple_water_basin.scad>
include <cube_sheet.scad>
include <bike_animation.scad>
include <bike_to_slinky.scad>
include <slinky_turned.scad>
include <triagon3d.scad>
include <slinky_unfurling.scad>
include <slinky_s.scad>
include <slinky_to_final.scad>
include <end_form.scad>
//include <probe_hands1.scad>
//include <probe_hands2.scad>
include <probe_hands3.scad>


// 15-20 columns deep


$vpt = [0, 531.28+5+(17*$t), 35.40-(1*$t)];   // camera position
$vpr = [76, 0.00, 0];    // rotation
$vpd = 9.78;               // distance from camera
$vpf = 20;                 // field of view (perspective only)
//$vpf = 15;                   // field of view (perspective only)




translate([0,491.2-2+25+(22)-10.5+5+(17*$t), 38.5-28.5+17.4+6-(1*$t)])
rotate([0, 90-90, -90+90])
scale(0.5)
probe_hands();

translate([0,491.2-2+25+(22), 38.5-28.5+3])
rotate([0, 90+90, -90+90])
scale(0.42)
probe_hands();




translate([0,2*correction_factor+56,0])
color("#2C3E2D")
difference()
{
cube([910,1150,1],center=true);
  // temple mount
translate([0,100,0])
cube([180,500,2],center=true);

}

path_width = 16;

// roads
color("#4A5D4B")
translate([0,0,0]){
  // big diagonals
  translate([-102.5-120,-120,0.5])
  rotate([0,0,-45])
  cube([path_width,600,1],center=true);
  translate([102.5+120,-120,0.5])
  rotate([0,0,45])
  cube([path_width,600,1],center=true);
  translate([0,90,1])
  // full horizontal 
  cube([850,path_width,1],center=true);
  // basin verticals 
  translate([93,-160.5,1])
  cube([path_width,345,1],center=true);
  translate([-93,-160.5,1])
  cube([path_width,345,1],center=true);
  translate([0,2,1])
  cube([200,path_width,1],center=true);
  // horizontals going to edge
  translate([260,-115,1])
  cube([330,path_width,1],center=true);
  translate([-260,-115,1])
  cube([330,path_width,1],center=true);
  translate([335,-210,1])
  rotate([0,0,45])
  cube([315,path_width,1],center=true);
  translate([-335,-210,1])
  rotate([0,0,-45])
  cube([315,path_width,1],center=true);
  translate([0,43,1])
  cube([path_width,85,1],center=true);
  // side basin verticals 
  translate([220,245,1])
  cube([path_width,1150,1],center=true);
  translate([-220,245,1])
  cube([path_width,1150,1],center=true);
  // after basin verticals 
  translate([93,455,1])
  cube([path_width,720,1],center=true);
  translate([-93,455,1])
  cube([path_width,720,1],center=true);
  // side lot verticals 
 
  }


for (i = [-320:25:750]) {

translate([440,i,1])
scale(15)
border_conifer();

translate([-440,i,1])
scale(15)
border_conifer();

}

translate([-130,31,10])
rotate([0,0,-45])
scale(2.5)
accordion();

translate([136,24,5])
rotate([0,0,45])
scale(2.05)
cube_lattice_building();


translate([-135,-72,1])
scale(1.1)
noise_circle();

translate([135,-74.5,1])
rotate([0,0,90])
scale(1.12)
rotating_pyramid();

translate([0,-192,11])
scale(2.5)
frontal_building();


//frontal basin 
fbh = 5;
color("Gold")
scale(0.9){
translate([0,-212,2])
union(){
difference(){
union(){
difference(){
cube([99,195,fbh],center=true);
cube([93,188,fbh],center=true);
}
translate([0,95,0])
difference(){
    cylinder(fbh, 36, 36, $fn=50,center=true);
    cylinder(fbh+0.1, 33, 33, $fn=50,center=true);
  }
translate([0,-96,0])
difference(){
    cylinder(fbh, 36, 36, $fn=50,center=true);
    cylinder(fbh+0.1, 33, 33, $fn=50,center=true);
  }
}
cube([93,188,fbh+1],center=true);
cube([65.8,195.2,fbh+1],center=true);
}
difference(){
    cylinder(fbh, 10, 10, $fn=15,center=true);
    cylinder(fbh+0.1, 9, 9, $fn=15,center=true);
  }
for (j = [0:90:360]) {
rotate([0,0,j])
translate([0,15,0])
for (i = [-15:10:15]) {
    translate([i,0,0])
    cylinder(0.1, 1.5, 1.5, $fn=10,center=true);
}
rotate([0,0,j])
translate([0,22.5,0])
cylinder(0.1, 1.8, 1.8, $fn=12);
}
}
}
color("Gold")
translate([0,-192.5,2])
cube([52,52,5],center=true);

// basin bottom
color("DeepSkyBlue")
translate([0,-192.5,2])
scale(0.9)
union() {
 translate([0,95,0])
 cylinder(0.1, 33, 33, $fn=50,center=true);
 translate([0,-96,0])
 cylinder(0.1, 33, 33, $fn=50,center=true);
 cube([93,188,0.1],center=true);
}

// water
color("Aqua",0.2)
translate([0,-192.5,2])
scale(0.9)
union() {
 translate([0,95,0])
 cylinder(2, 33, 33, $fn=50,center=true);
 translate([0,-96,0])
 cylinder(2, 33, 33, $fn=50,center=true);
 translate([0,0,0.01])
 cube([93,188,2],center=true);
}


// end of front basin 




translate([65, -189, 2]) 
scale(0.7)
short_bouncy_column();
translate([-65, -189, 2]) 
scale(0.7)
short_bouncy_column();

translate([-65,-58.5,2])
scale(0.7)
bouncy_column();
translate([65,-58,2])
scale(0.7)
bouncy_column();
translate([-65,-320.5,2])
scale(0.7)
bouncy_column();
translate([65,-320.5,2])
scale(0.7)
bouncy_column();


translate([-327,-14,5])
rotate([0,0,45])
scale(0.7)
bouncy_column();
translate([327,-14,5])
rotate([0,0,45])
scale(0.7)
bouncy_column();

// outer bouncy column circle 
outer_circle_height = 4;

translate([15,40,0])
union(){
color("Gold")
scale(0.9)
translate([-380,-60,2])
union(){
difference() {
    cylinder(outer_circle_height, 55, 55, $fn=100,center=true);
    cylinder(outer_circle_height+0.1, 53, 53, $fn=100,center=true);
}
rotate([0,0,45])
cube([35,35,outer_circle_height],center=true);
}
color("DeepSkyBlue")
scale(0.9)
translate([-380,-60,1.4])
cylinder(0.1, 53, 53, $fn=100,center=true);
color("Aqua",0.2)
scale(0.9)
translate([-380,-60,2])
cylinder(1, 53, 53, $fn=100,center=true);
}

translate([-15,40,0])
union(){
color("Gold")
scale(0.9)
translate([380,-60,2])
union(){
difference() {
    cylinder(outer_circle_height, 55, 55, $fn=100,center=true);
    cylinder(outer_circle_height+0.1, 53, 53, $fn=100,center=true);
}
rotate([0,0,45])
cube([35,35,outer_circle_height],center=true);
}
color("DeepSkyBlue")
scale(0.9)
translate([380,-60,1.4])
cylinder(0.1, 53, 53, $fn=100,center=true);
color("Aqua",0.2)
scale(0.9)
translate([380,-60,2])
cylinder(1, 53, 53, $fn=100,center=true);
}



// front ponds
color("Aqua")
translate([158, -180, 1]) 
cylinder(1, 25, 25, $fn=100);
color("Aqua")
translate([-158, -180, 1]) 
cylinder(1, 25, 25, $fn=100);


translate([135,correction_factor+29.5,5])
scale(1.2)
sirpinski_structure();
translate([-135,correction_factor+29.5,5])
scale(1.2)
sirpinski_structure();

correction_factor = 93;
translate([1,correction_factor,0])
for (i = [-55:27:55]) {
 translate([i,42,24])
 scale(1.1)
 front_temple_column();   
}
translate([1,correction_factor,-50])
rotate([0,180,0])
for (i = [-55:27:55]) {
 translate([i+2,42,24-correction_factor])
 rotate([-30,0,0])
 scale(1.1)
 front_temple_column();   
}

// top temple front bar 
translate([0,correction_factor,4])
scale(1)
union(){
color("DodgerBlue")
translate([0,42,58])
cube([110,6,1],center=true);
color("Yellow")
translate([0,42,59])
cube([100,6,1],center=true);
color("Orange",0.4)
translate([0,42,63.2])
sphere(3.5,$fn=40);
color("Orange",0.4)
translate([28,42,63.2])
sphere(3.5,$fn=40);
color("Orange",0.4)
translate([-28,42,63.2])
sphere(3.5,$fn=40);

color("Orange")
translate([0,42,67.5])
union(){
cube([7,7,0.4],center=true);
translate([0,0,-0.2])
cube([5,5,0.4],center=true);
translate([0,0,-0.4])
cube([3,3,0.4],center=true);
}
color("Orange")
translate([28,42,67.5])
union(){
cube([7,7,0.4],center=true);
translate([0,0,-0.2])
cube([5,5,0.4],center=true);
translate([0,0,-0.4])
cube([3,3,0.4],center=true);
}
color("Orange")
translate([-28,42,67.5])
union(){
cube([7,7,0.4],center=true);
translate([0,0,-0.2])
cube([5,5,0.4],center=true);
translate([0,0,-0.4])
cube([3,3,0.4],center=true);
}

color("DodgerBlue")
translate([0,42,68])
cube([65,6,1],center=true);
color("yellow")
translate([0,42,69])
cube([15,6,1],center=true);
color("DodgerBlue")
translate([0,42,69.5])
rotate([0,0,45])
cylinder(4.5, 4.5, 0, $fn=4);
}


// top temple front bar reflection 
translate([0,correction_factor+2,-55])
union(){
translate([0,-6,correction_factor-23])
rotate([-30,180,0])
{
color("DodgerBlue")
translate([0,42,58])
cube([110,6,1],center=true);
color("Yellow")
translate([0,42,59])
cube([100,6,1],center=true);
color("Orange",0.4)
translate([0,42,63.2])
sphere(3.5,$fn=40);
color("Orange",0.4)
translate([28,42,63.2])
sphere(3.5,$fn=40);
color("Orange",0.4)
translate([-28,42,63.2])
sphere(3.5,$fn=40);

color("Orange")
translate([0,42,67.5])
union(){
cube([7,7,0.4],center=true);
translate([0,0,-0.2])
cube([5,5,0.4],center=true);
translate([0,0,-0.4])
cube([3,3,0.4],center=true);
}
color("Orange")
translate([28,42,67.5])
union(){
cube([7,7,0.4],center=true);
translate([0,0,-0.2])
cube([5,5,0.4],center=true);
translate([0,0,-0.4])
cube([3,3,0.4],center=true);
}
color("Orange")
translate([-28,42,67.5])
union(){
cube([7,7,0.4],center=true);
translate([0,0,-0.2])
cube([5,5,0.4],center=true);
translate([0,0,-0.4])
cube([3,3,0.4],center=true);
}

color("DodgerBlue")
translate([0,42,68])
cube([65,6,1],center=true);
color("yellow")
translate([0,42,69])
cube([15,6,1],center=true);
color("DodgerBlue")
translate([0,42,69.5])
rotate([0,0,45])
cylinder(4.5, 4.5, 0, $fn=4);
}
}


translate([0,correction_factor,0])
union(){
translate([22,10,5])
scale(0.8)
temple_lantern();
translate([22,20,10])
scale(0.8)
temple_lantern();
translate([22,30,15])
scale(0.8)
temple_lantern();
translate([-22,10,5])
scale(0.8)
temple_lantern();
translate([-22,20,10])
scale(0.8)
temple_lantern();
translate([-22,30,15])
scale(0.8)
temple_lantern();
}

translate([0,133,21.5])
rotate([0,180,180])
union(){
translate([22,10,5])
scale(0.8)
rotate([30,0,0])
temple_lantern();
translate([22,20,10])
scale(0.8)
rotate([30,0,0])
temple_lantern();
translate([22,30,15])
scale(0.8)
rotate([30,0,0])
temple_lantern();
translate([-22,10,5])
scale(0.8)
rotate([30,0,0])
temple_lantern();
translate([-22,20,10])
scale(0.8)
rotate([30,0,0])
temple_lantern();
translate([-22,30,15])
scale(0.8)
rotate([30,0,0])
temple_lantern();
}


// temple hall 
translate([0,correction_factor,0])
union(){
// normal
for (i = [0:10.6:320]) {
    
translate([16,60+i,34])
rotate([0,0,90])
scale(1.6)
temple_column();
translate([-15,60+i,34])
rotate([0,0,90])
scale(1.6)
temple_column();
translate([0.5,60+i,42])
scale(1.1)
temple_lintel();
}



rotate([0,180,0])

// reflection
for (i = [150:10.6:320]) {
    
translate([15,60+i,-5])
rotate([0,0,90])
scale(1.6)
temple_column();
translate([-16,60+i,-5])
rotate([0,0,90])
scale(1.6)
temple_column();
translate([0.5,60+i,3])
scale(1.1)
temple_lintel();
}
}


// back circle 
col_correction = 22.5*8;
translate([0,462+correction_factor,20])
difference()
{
union(){
scale(2.5)
for (i = [22.5*2:22.5:(360-25)]) {
 rotate([0,0,i+col_correction])
 translate([0,32,0])
 temple_sanctum_column();
 rotate([0,0,i+12.25+col_correction-1])
 translate([0,34,2.5])
 scale(0.6)
 temple_sanctum_column2();
}
}
translate([0,-70,0])
cube([46,46,200],center=true);
}


// gate_family 
translate([-1.1,462+31.3,20])
rotate([0,0,(22.5*5)])
translate([0,32,0])
scale(2.5)
rotate([0,0,67])
temple_sanctum_column();
translate([60.175,462+31.35,20])
rotate([0,0,(22.5*5)])
translate([0,32,0])
scale(2.5)
rotate([0,0,67])
temple_sanctum_column();
translate([78.08,462+35.4,26.25])
rotate([0,0,(22.5*5)])
translate([0,32,0])
rotate([0,0,12+90])
scale(1.5)
temple_sanctum_column2();

//$vpf = 5;

// gate_family reflection 
translate([1,468.8,19])
rotate([180,0,(22.5*5)])
translate([0,32,0])
scale(2.5)
rotate([0,0,22.5])
temple_sanctum_column();
translate([-60.2,468.8,19])
rotate([180,0,(22.5*5)])
translate([0,32,0])
scale(2.5)
rotate([0,0,22.5])
temple_sanctum_column();
translate([78.08,462+35.4,26.25])
rotate([0,0,(22.5*5)])
translate([0,32,0])
rotate([0,0,12+90])
scale(1.5)
temple_sanctum_column2();


col_correction2 = 2*22.5;
col_correction3 = 2*22.5;

// reflection
rotate([0,180,0])
translate([0,465+correction_factor,-17])
difference()
{
union(){
scale(2.5)
for (i = [22.5*4:22.5:360]) {
 rotate([0,0,i-1.8+col_correction2+(22.5*4)+3.8])
 translate([0,32.5,-0.5])
 temple_sanctum_column();
}
scale(2.5)
for (i = [0:22.5:360]) {
 rotate([0,0,i+12.25+col_correction+0.8])
 translate([0,34.25,2.5])
 scale(0.6)
 temple_sanctum_column2();
}
}
translate([0,-70,0])
cube([46,46,200],center=true);
}


translate([0,30+correction_factor,0])
union(){
color("Yellow",0.3)
translate([0,430,130-15])
sphere(11,$fn=50);
color("Yellow",0.3)
rotate([0,180,0])
translate([0,430,130-15-40])
sphere(11,$fn=50);

translate([0,-40,0])
scale([1.1,1.1,1])
union(){
color("Orange")
translate([0,430,95-15])
difference() {
    cylinder(1, 70, 70, $fn=50,center=true);
    cylinder(1.2, 69, 69, $fn=50,center=true);
}
color("Orange")
rotate([0,180,0])
translate([0,430,95-15-40])
difference() {
    cylinder(1, 70, 70, $fn=50,center=true);
    cylinder(1.2, 69, 69, $fn=50,center=true);
}


color("Wheat")
translate([0,430,99-15])
difference() {
    cylinder(1, 65, 65, $fn=50,center=true);
    cylinder(1.2, 64, 64, $fn=50,center=true);
}
color("Wheat")
rotate([0,180,0])
translate([0,430,99-15-40])
difference() {
    cylinder(1, 65, 65, $fn=50,center=true);
    cylinder(1.2, 64, 64, $fn=50,center=true);
}

color("DodgerBlue")
translate([0,430,106-15])
difference() {
    cylinder(1, 57, 57, $fn=50,center=true);
    cylinder(1.2, 56, 56, $fn=50,center=true);
}
color("DodgerBlue")
rotate([0,180,0])
translate([0,430,106-15-40])
difference() {
    cylinder(1, 57, 57, $fn=50,center=true);
    cylinder(1.2, 56, 56, $fn=50,center=true);
}

color("Blue")
translate([0,430,113-15])
difference() {
    cylinder(1, 36, 36, $fn=50,center=true);
    cylinder(1.2, 35, 35, $fn=50,center=true);
}
color("Blue")
rotate([0,180,0])
translate([0,430,113-15-40])
difference() {
    cylinder(1, 36, 36, $fn=50,center=true);
    cylinder(1.2, 35, 35, $fn=50,center=true);
}
}
}


// triagon3d 

translate([0,557,33.5])
rotate([0,-105,180])
scale(0.5)
triagon3d();



//rotate([30,0,0])


// temple mount trees
for (i = [0:1:30]) {
    
translate([-60,153+(i*10.6),18])
scale(decorative_tree4_scale)
decorative_tree4_lowres();
translate([60,153+(i*10.6),18])
scale(decorative_tree4_scale)
decorative_tree4_lowres();
}



decorative_tree4_scale = 0.6;
spacing = 16;

// remember these take a bit of 
// rendering power

union()
{
translate([34,113,9])
scale(decorative_tree4_scale)
decorative_tree4();
translate([34+spacing,113,9])
scale(decorative_tree4_scale)
decorative_tree4();
translate([34+(2*spacing),113,9])
scale(decorative_tree4_scale)
decorative_tree4();

translate([-34,113,9])
scale(decorative_tree4_scale)
decorative_tree4();
translate([-34-spacing,113,9])
scale(decorative_tree4_scale)
decorative_tree4();
translate([-34-(2*spacing),113,9])
scale(decorative_tree4_scale)
decorative_tree4();
}


// reflection trees
translate([0,-1,4])
union()
{
translate([34,113,9])
scale(decorative_tree4_scale)
rotate([180+30,0,0])
decorative_tree4();
translate([34+spacing,113,9])
scale(decorative_tree4_scale)
rotate([180+30,0,0])
decorative_tree4();
translate([34+(2*spacing),113,9])
scale(decorative_tree4_scale)
rotate([180+30,0,0])
decorative_tree4();

translate([-34,113,9])
scale(decorative_tree4_scale)
rotate([180+30,0,0])
decorative_tree4();
translate([-34-spacing,113,9])
scale(decorative_tree4_scale)
rotate([180+30,0,0])
decorative_tree4();
translate([-34-(2*spacing),113,9])
scale(decorative_tree4_scale)
rotate([180+30,0,0])
decorative_tree4();
}


basin_distance = 64; 
basin_scale_long = 1.415; 
basin_long_correction = 7;

// temple water basin 
union(){
for (i = [0:1:4]) {
    
translate([0,175+(basin_distance*i)+basin_long_correction,21])
scale([1,basin_scale_long,1])
temple_water_basin();
}

translate([-35,0,0])
scale([2.5,1,1])
for (i = [0:1:4]) {
    
translate([0,175+(basin_distance*i)+basin_long_correction,21])
scale([1,basin_scale_long,1])
temple_water_basin();
}

translate([35,0,0])
scale([2.5,1,1])
for (i = [0:1:4]) {
    
translate([0,175+(basin_distance*i)+basin_long_correction,21])
scale([1,basin_scale_long,1])
temple_water_basin();
}
}

translate([0,0,40])
rotate([0,180,0])
union(){
for (i = [0:1:4]) {
    
translate([0,175+(basin_distance*i)+basin_long_correction,21])
scale([1,basin_scale_long,1])
temple_water_basin();
}

translate([-35,0,0])
scale([2.5,1,1])
for (i = [0:1:4]) {
    
translate([0,175+(basin_distance*i)+basin_long_correction,21])
scale([1,basin_scale_long,1])
temple_water_basin();
}

translate([35,0,0])
scale([2.5,1,1])
for (i = [0:1:4]) {
    
translate([0,175+(basin_distance*i)+basin_long_correction,21])
scale([1,basin_scale_long,1])
temple_water_basin();
}
}


rotate([0,180,0])
translate([-0.5,478,32-36])
scale(1.4)
cube_sheet();

  // temple mount
  color("Black",0.7)
  translate([0,248+correction_factor,10])
  difference()
  {
  translate([0,50,0])
  cube([180,600,20],center=true);
  translate([0,-250,35])
  rotate([-60,0,0])
  cube([200,80,80],center=true);
  }
  /*
  color("Black",0.6)
  translate([0,465+correction_factor,0])
  scale([1.2,1.2,1])
  cylinder(20, 90, 90, $fn=40);
*/ 

// outer corners
for (i = [120:35:700]) {
 translate([286,i,10])
 outer_dome();  
 translate([-286,i,10])
 outer_dome();  
 translate([400,i,10])
 outer_dome();  
 translate([-400,i,10])
 outer_dome();  
}

//outer fence
color("khaki"){
translate([-235,410,4])
cube([10,250,10],center=true);
translate([-235,710,4])
cube([10,220,10],center=true);
translate([-235,160,4])
cube([10,120,10],center=true);

translate([235,410,4])
cube([10,250,10],center=true);
translate([235,710,4])
cube([10,220,10],center=true);
translate([235,160,4])
cube([10,120,10],center=true);
}


for (i = [334:152.5:700]) {
    
translate([342,i,10])
scale([6.3,5.2,5])
outer_hedge();
translate([-342,i,10])
scale([6.3,5.2,5])
outer_hedge();
}

/*
translate([0,0,-0.8])
scale(0.9)
game_board();
*/

// sanctum_glass_sheet
translate([1,478,31.35])
scale(1.4)
cube_sheet();

color("Coral",0.5)
translate([0.5,478,42])
difference(){
rotate([90,0,0])
cylinder(2, 15.5, 15.5, $fn=30);
translate([0,0,-10])
cube([35,5,30],center=true);
}


translate([0,0,40])
rotate([0,180,0])
color("Coral",0.5)
translate([0.5,478,42])
difference(){
rotate([90,0,0])
cylinder(2, 15.5, 15.5, $fn=30);
translate([0,0,-10])
cube([35,5,30],center=true);
}

