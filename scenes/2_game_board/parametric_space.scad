

//seed = seed == undef ? 0 : seed; 

module parametric_space(seed=36,density=2500,size=200,sp_radius=0.7,alpha=1) {
    

xs = rands(-size, size, density, seed);
ys = rands(-size, size, density, seed + 1);
zs = rands(-size, size, density, seed + 2);

translate([0, 300, 0]) 
color("white",alpha){
    for (i = [0:density-1]) {
        translate([xs[i], ys[i], zs[i]])
            sphere(sp_radius,$fn=5);
    }
}
}
