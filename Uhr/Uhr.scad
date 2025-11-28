MODE = (is_undef(MODE)) ? 0 : MODE;

//Parameter
$fn = 100; //Auflösung
diameter = 200;
hight= 5;

module logo() { translate([0,-7,(hight/2)-0.4]) linear_extrude(height = 0.4) scale(5) import("logo.svg", center=true);
    }

module partA() {
    difference(){
        cylinder(h=hight, d=diameter, center=true);
        cylinder(h=hight, d=5.2, center=true);
        logo();
        }
    }
    
module partB() {
    logo();
    }


   
if (MODE == 1) {
    partA();

} else if (MODE == 2) {
    partB();

} else {
    color("red") partA();
    color("blue") partB();
}

