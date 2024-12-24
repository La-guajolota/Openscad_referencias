$fa = 10;
$fs = 0.4;
$fn = 90;
cube_mea = 12;
sphere_mea = 8;

// OBJETO 1
translate([0, 0, 0]) {    
    union() {
        sphere(sphere_mea);
        cube(cube_mea,center=true);
    }
}

// OBJETO 2
translate([0, 0, sphere_mea*2]) {
    difference() {
        sphere(sphere_mea);
        cube(cube_mea,center=true);
    }
}

// OBJETO 3
translate([0, 0, sphere_mea*4]) {
    intersection() {
        sphere(sphere_mea);
        cube(cube_mea,center=true);
    }
}

// OBJETO 4
translate([20, 0, 0]) {
    difference(){
        // OBJETO A
        cylinder(r=5, h=20, center=true);

        // OBJETO B
        rotate([0, 140, -45]) {
            color("black") {
                cylinder(r=2, h=25, center=true);
            }
        }

        // OBJETO C
        rotate([0, 40, -50]) {
            color("white") {
                cylinder(r=2, h=25, center=true);
            }
        }
    }
}

// OBJETO 5
translate([40, 0, 0]) {
    difference(){
        union(){
            // OBJETO A
            cylinder(r=5, h=20, center=true);

            // OBJETO B
            rotate([0, 140, -45]) {
                color("black") {
                    cylinder(r=2, h=25, center=true);
                }
            }
        }

        // OBJETO C
        rotate([0, 40, -50]) {
            color("white") {
                cylinder(r=2, h=25, center=true);
            }
        }
    }
}