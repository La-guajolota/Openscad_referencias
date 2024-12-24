//Ejemplo_1
rotate([0, 0, 0]) {
    cylinder(10,r=5,center=true);
}

//Ejemplo_2
translate([0, 0, 10]) {
    rotate([90, 0, 0]) {
        cylinder(10,r=5,center=true);
    }
}

//Ejemplo_3
translate([0, 0, 20]) {
    rotate([0, 90, 0]) {
        cylinder(10,r=5,center=true);
    }
}

//Ejemplo_4
translate([0, 0, 30]) {
    rotate([0, 0, 90]) {
        cylinder(10,r=5,center=true);
    }
}