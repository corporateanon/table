use <leg.scad>;

module Legs3 () {
  magicAngle = 63.2;
  for(a = [0, 120, 240]) {
    rotate([0, 0, a])
      rotate([-magicAngle, 0, 0])
        translate([0, 0, -446.8])
          Leg();
  }
}
