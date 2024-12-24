/*
This raises the question of whether objects can be rotated and moved at the same time.
The answer is yes, as partly stated above. However, the open question is whether translation and rotation are commutative or not.
Remember: an operation is considered commutative if the order of its parameters can be
exchanged without affecting the result. A classic example would be multiplication - a*b and
b*a return an identical result, so the operation is commutative.

The simplest way to check the behavior is to create two objects as above and swap the
order of the operators once per creation operation. If the two are "on top of each other",
operations are commutative - if we see two elements, the operation is not commutative.
To keep the example "compact", the author would like to anticipate advanced experiments
with the description language at this point and declare a module:
*/
$fa = 1;
$fs = 0.4;

module tamsDreidel(dia=22) {
    cylinder(dia,dia,dia,true);
    cylinder(dia*2,dia/9,dia/4,true);
}

color("blue") {
    cylinder(h=10,r1=3,r2=6,center=true);
}

color("white") {
    translate([0,20,0]) {
        rotate([45,0,0]) {
            tamsDreidel(5);
        }
    }
}

color("grey"){
    rotate([45,0,0]){
        translate([0,20,0]) {
            tamsDreidel(5); 
        }
    }
}