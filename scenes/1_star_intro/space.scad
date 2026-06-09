

//seed = seed == undef ? 0 : seed; 
seed = 36;

density = 2500;
size = 200;

xs = rands(-size, size, density, seed);
ys = rands(-size, size, density, seed + 1);
zs = rands(-size, size, density, seed + 2);

translate([0, 300, 0]) 
color("white"){
    for (i = [0:density-1]) {
        translate([xs[i], ys[i], zs[i]])
            sphere(0.7,$fn=5);
    }
}
