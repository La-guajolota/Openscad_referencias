difference() {
    difference() {
        //ADDITIVES
        union() {
            //ARMS
            rotate([90,0,0]){
                linear_extrude(height = 5)
                    polygon(points=[[0,0],[30,0],[50,40],[30,40]]);
                translate([0,0,45])
                    linear_extrude(height = 5)
                        polygon(points=[[0,0],[30,0],[50,40],[30,40]]); 
            } 
            //FOOT
            translate([0,-72,0])
                cube([50,95,4]);
        }

        //SUBTRACTIVES
        union() {
            //Hole for cables
            translate([27,10,18])
                rotate([90,0,0])
                    cylinder(120,4,4);
            
            translate([13,-60,18])
                rotate([125,0,90])
                    cube([71,8,5]);
        }
    }

    //MATERIAL SAVER
    translate([0,-60,29])
        cube([100,100,100]);
}