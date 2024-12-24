//Cilindro1
cylinder(r=10, h=10, center=true);

//Cilindro2
rotate([0, 90, 0]) {
    cylinder(r=10, h=10, center=true);
}

//Cilindro3
translate([0, 20, 0]) {
    cylinder(r=10, h=10, center=true);
}

//Cilindro4
translate([25, 25, 0]) {
    translate([0, 25, 0]) {
        cylinder(r=10, h=10, center=true);
    }
}

//cube 1
translate([0, 0, 50]) {
    // Rotate 45 degrees around the Z-axis
    rotate(a=45, v=[0, 0, 1]) {
        cube(10);
    }
}

//cube 2
translate([0, 0, 100]) {
    // Rotate 45 degrees around the X-axis, 30 degrees around the Y-axis, and 60 degrees around the Z-axis
    rotate([45, 30, 60]) {
        cube(10);
    }
}