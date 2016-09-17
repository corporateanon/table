include <constants.scad>

arrowHeadLength = 56.7;
arrowHeadFacetLength = 3.2;
arrowHeadConeLength = 56.7 - 3.2;

module ArrowHead() {
  rotate_extrude()
      polygon(points = [
        [0, 0],
        [7, 0],
        [7, 3.2],
        [8, 3.2],
        [2, 56.7],
        [0, 56.7],
        [0, 0],
      ]);
}

module Arrow(len, d=16, center=false) {
  cylLength = len - 2 * arrowHeadConeLength;
  centeringShift = center ? -len / 2 : 0;

  translate([0, 0, centeringShift]) {
    translate([0, 0, arrowHeadConeLength])
      cylinder(h=cylLength, d=d);

    translate([0, 0, arrowHeadConeLength - arrowHeadFacetLength + cylLength])
      color("red") ArrowHead();

    translate([0, 0, arrowHeadLength])
      rotate([180, 0, 0])
        color("red") ArrowHead();
  }
}

module ArrowType1(center=false) {
  Arrow(len=A1_LENGTH, center=center);
}

module ArrowType2(center=false) {
  Arrow(len=A2_LENGTH, center=center);
}

module ArrowType3(center=false) {
  Arrow(len=T_SIDE, center=center);
}
// ArrowType3();

//12 штук 501.2 мм. 6 штук 446.8 мм. 9 штук 185 мм.
