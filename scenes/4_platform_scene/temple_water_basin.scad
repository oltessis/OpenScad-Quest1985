

//temple_water_basin();

module temple_water_basin() {

color("Gold")
difference() {
    
cube([10, 45, 2], center=true);
translate([0,0,0.1])
cube([10-3.5, 45-3.5, 2], center=true);

}


frames = 60;
frame = min(frames - 1, floor($t * frames));

fname =
    frame < 10
    ? str("wave_images/wave_0", frame, ".png")
    : str("wave_images/wave_", frame, ".png");

rotate([0,0,90])
scale([1,1,0.025])
color("DodgerBlue", 0.3)
surface(
    file = fname,
    center = true,
    convexity = 5
);

}
