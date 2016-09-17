use <tetrahedron.scad>;
use <legs3.scad>;
use <cover.scad>;
include <constants.scad>;


module Table() {
  magicShift = 505;
  tetrHalfHeight = 2 * sqrt(2/3) * T_SIDE;

  rotate([0,0,-30])
    color("green") Tetrahedron();

  //lower legs
  Legs3();

  //upper legs
  translate([0, 0, tetrHalfHeight])
    mirror([0,0,1])
      Legs3();

  translate([0, 0, magicShift])
    color([0, 0, 1, 0.2]) Cover();
}

