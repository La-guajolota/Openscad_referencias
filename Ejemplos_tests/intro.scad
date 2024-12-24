/*
Establece el ángulo mínimo (en grados) para un fragmento de un círculo o arco. 
Esto afecta la suavidad de las superficies curvas.
*/
$fa = 1; 
/*
Establece el tamaño mínimo de un fragmento. Esto también afecta la suavidad 
de las superficies curvas.
*/
$fs = 0.4;

//Cuerpo del carro
cube(size=[60, 20, 10], center=true);
translate([5, 0, 10 - 0.001]) {
    cube(size=[30, 20, 10], center=true);
}
//Ruedas
translate([-20, -15, 0]) {
    rotate([90, 0, 0]) {
        cylinder(r=8, h=3, center=true);
    }
}
translate([-20, 15, 0]) {
    rotate([90, 0, 0]) {
        cylinder(r=8, h=3, center=true);
    }
}
translate([20, -15, 0]) {
    rotate([90, 0, 0]) {
        cylinder(r=8, h=3, center=true);
    }
}
translate([20, 15, 0]) {
    rotate([90, 0, 0]) {
        cylinder(r=8, h=3, center=true);
    }
}
//Ejes de las ruedas por par
translate([-20, 0, 0]) {
    rotate([90, 0, 0]) {
        cylinder(r=2, h=30, center=true);
    }
}
translate([20, 0, 0]) {
    rotate([90, 0, 0]) {
        cylinder(r=2, h=30, center=true);
    }
}