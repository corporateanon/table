
module PyramidOf(angle, num=3) {
  for (a = [0:num-1]) {
    rotate([0,0,a*360/num]) rotate([0,angle,0]) children(0);
  }
}

module TriangleOf(len) {
  for (a = [0:2]) {
    rotate([0, 0, 360/3 * a])
      translate([len / 2 / sqrt(3), 0, 0]) rotate([90, 0, 0]) children(0);
  }
}
