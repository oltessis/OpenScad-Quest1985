
function pad3(n) = 
    n < 10 ? str("00", n) :
    n < 100 ? str("0", n) :
    str(n);

frame = floor($t * 60);
scale([2,2,0.1])
color("RoyalBlue",0.2)
surface(
    file = str("ripple_frames/ripple_", pad3(frame), ".png"),
    center = true,
    convexity = 5
);
