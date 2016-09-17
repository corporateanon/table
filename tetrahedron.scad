use <arrows.scad>;
use <groups.scad>;
include <constants.scad>;


module Tetrahedron() {
  angle = 35;
  len = T_SIDE;

  halfHeight = cos(angle) * len;

  translate([0, 0, halfHeight])
    rotate([0, 0, 60])
      TriangleOf(len=len)
        ArrowType3(center=true);

  PyramidOf(angle)
    ArrowType3();

  translate([0,0,halfHeight*2])
    rotate([180, 0, 0])
      PyramidOf(angle)
        ArrowType3();
}
