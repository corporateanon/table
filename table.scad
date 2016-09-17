use <tetrahedron.scad>;
use <legs3.scad>;
use <cover.scad>;


tetrHalfHeight = 2 * sqrt(2/3) * 185;

rotate([0,0,-30])
  color("green") Tetrahedron();


//lower legs
Legs3();

//upper legs
translate([0, 0, tetrHalfHeight])
  mirror([0,0,1])
    Legs3();

translate([0,0,505])
  color([0, 0, 1, 0.2]) Cover();
