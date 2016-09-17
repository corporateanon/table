use <arrows.scad>;
use <triangles.scad>;
include <constants.scad>;

module Leg(openAngle) {
  magicAngle = 18.9;

  angles = TriangleAnglesBySides(a=A1_LENGTH, b=A1_LENGTH, c=T_SIDE);
  a = angles[2] / 2;

  color("blue") ArrowType2();

  color("red")
    rotate([magicAngle, 0, 0]) {
      rotate([0, a, 0])
         ArrowType1();
      rotate([0, -a, 0])
        ArrowType1();
    }

}
