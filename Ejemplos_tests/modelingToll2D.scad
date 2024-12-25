/*
The `linear_extrude` function in OpenSCAD is used to create a 3D shape by extruding a 2D shape along the Z-axis.
It can also apply transformations such as twisting and scaling during the extrusion process. 
Here are the key parameters and what they do:

! Parameters of `linear_extrude`
1. **height**:
   - Specifies the height of the extrusion along the Z-axis.

2. **twist** (optional):
   - Specifies the total twist angle (in degrees) applied to the extrusion. 
   This twists the shape around the Z-axis as it is extruded.

3. **slices** (optional):
   - Specifies the number of slices used in the extrusion. More slices result in a smoother twist.

4. **scale** (optional):
   - Specifies the scaling factor applied to the shape as it is extruded. 
   It can be a single value or a vector `[scaleX, scaleY]`.

5. **center** (optional):
   - If `true`, the extrusion is centered along the Z-axis. If `false` (default), the extrusion starts from the Z=0 plane.

? Example Usage
In your code, `linear_extrude` is used to create twisted extrusions of 2D circles:

```scad
linear_extrude(100, twist=twist_, slices=slices_)
    translate([20, 0, 0])
        circle(5, $fn=4);
```

?Explanation
- **`linear_extrude(100, twist=twist_, slices=slices_)`**:
  - Extrudes the 2D shape (circle) along the Z-axis by 100 units.
  - Applies a twist of 720 degrees over the height of the extrusion.
  - Uses 100 slices to create a smooth twist.

- **`translate([20, 0, 0])`**:
  - Moves the 2D shape 20 units along the X-axis before extrusion.

- **`circle(5, $fn=4)`**:
  - Creates a 2D circle with a radius of 5 units, approximated with 4 sides (a square).

? Summary
The `linear_extrude` function in your code creates four twisted extrusions of squares (approximated circles) in different 
colors (red, green, blue, yellow), each positioned at different locations on the XY plane. The extrusions are twisted by 720 
degrees over a height of 100 units, creating visually interesting 3D shapes.
*/

slices_ = 100;
twist_ = 360; 

color("red")
    linear_extrude(100, twist=twist_, slices=slices_)
        translate([20, 0, 0])
            circle(5, $fn=3);   

color("green")
    linear_extrude(100, twist=twist_, slices=slices_)
        translate([-20, 0, 0])
            circle(5, $fn=3);   

color("blue")
    linear_extrude(100, twist=twist_, slices=slices_)
        translate([0, 20, 0])
            circle(5, $fn=3);

color("yellow")
    linear_extrude(100, twist=twist_, slices=slices_)
        translate([0, -20, 0])
            circle(5, $fn=3);