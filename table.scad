module Pyramid(angle) {
  num = 3;

  for (a = [0:num-1]) {
    rotate([0,0,a*360/num]) rotate([0,angle,0]) children(0);
  }
}



module Leg() {
  cylH = 1100;
  cylR = 10;

  Pyramid(angle=10) {
    cylinder(h=cylH, r=cylR);
  }
}

Pyramid(angle=40) translate([0,0,1000]) rotate([180, 0, 0]) Leg();

color([0,0,1, 0.3]) translate([0,0,770]) cylinder(h=10, d=2000);