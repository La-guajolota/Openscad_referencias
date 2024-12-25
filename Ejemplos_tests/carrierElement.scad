$fn = 256;
$diam = 25.9/2;

difference() {
    difference() {
        linear_extrude(height = 100)
            circle($diam);
        linear_extrude(height = 20)
            circle(5.2);
    }

    linear_extrude(height = 101)
        circle(4.7);
}
