$fn = 64;

difference(){
    tamsmodule();
    difference(){
        translate([0,0,8.5])
            cylinder(h=3, r1=22/2, r2=1/2, center=true);
        translate([0,0,7.6])
            cylinder(h=3, r1=22/2, r2=1/2, center=true);
    }
}

module tamsmodule(){
    difference(){
        cylinder(h=15.5, r1=12/2, r2=12/2, center=true);
        translate([0,0,-2])
            cylinder(h=13.5, r1=8.8/2, r2=8.8/2, center=true);
    }
}

// inner detents
for(var = [0:5]){
    rotate([0,0,360/6 * var])
        translate([12/2 -2.2,0,0])
            cube([1.5-0.4,1.5,15.5], center=true);
}

// outer detents
for (var=[0:6]) {
    rotate([0,0,360/6 * var])
        translate([12/2 -2.2,0,0])
            cube([1.5,0.8,15.5], center=true);
}


// Some kind of lid
translate([0,0,8.5])
    cylinder(h=2, r1=12/2, r2=1/2, center=true);
