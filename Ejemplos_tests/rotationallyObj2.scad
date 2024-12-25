//Fiugra 1
difference(){
    square(30);
    circle(r = 15);
}

//Figura 2
translate([-10,0,0])
    color("blue")
        polygon([[1,1],[5,3],[9,1],[5,8]]);

//Figura 3
color("red")
    polygon(points = [ [5, 1], [2, 4], [5, 4],
                        [1, 7], [4, 8], [5, 4],
                        [9, 7], [9, 5], [5, 4] ]);

//Figura 4
points = [ [5, 1], [2, 4], [5, 4],
                   [1, 7], [4, 8],
                   [9, 7], [9, 5]];
paths = [[0,1,2,3,4,2,5,6,2]] ;
translate([0,-10,0])
    color("green")
        polygon(points=points, paths=paths);

//Figura 5
points2 = [ [5, 1], [2, 4], [5, 4],
                   [1, 7], [4, 8],
                   [9, 7], [9, 5],
           //HOLE
           [9.5, 7.5],[9.5, 5.5],[5.5, 4.5]];
paths2 = [[0,1,2, 3, 4, 2, 5, 6, 2],[7,8,9]];
translate([-10,-10,0])
    color("purple")    
        polygon(points=points2, paths=paths2);