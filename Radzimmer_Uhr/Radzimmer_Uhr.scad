MODE = (is_undef(MODE)) ? 0 : MODE;

//Parameter
$fn = 100; //Auflösung
diameter = 200;
hight= 5;

module logo() { translate([0,-6,(hight/2)-0.4]) linear_extrude(height = 0.4) scale(5) import("logo.svg", center=true);
    }

module marker() {
    for (i = [0:30:330]) {
        rotate([0,0,i])
            translate([diameter/2-3, 0, (hight/2)-0.2])
                cube([4, 1.2, 0.4], center = true);
    }
}

module partA() {
    difference(){
        cylinder(h=hight, d=diameter, center=true);
        cylinder(h=hight, d=7.8, center=true);
        logo();
        marker();
        }
    difference(){
        translate([0,0,-15.5])cylinder(h=14, d=diameter);
        translate([0,0,-15.5])cylinder(h=14, d=diameter-4);
        }
    }
    
module partB() {
    logo();
    marker();
    }


   
if (MODE == 1) {
    partA();

} else if (MODE == 2) {
    partB();

} else {
    color("red") partA();
    color("blue") partB();
}

