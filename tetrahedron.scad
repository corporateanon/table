use <arrows.scad>;
use <groups.scad>;


module Tetrahedron() {
  cylD = 16;
  angle = 35;
  len = 185;

  halfHeight = cos(angle) * len;

  translate([0, 0, halfHeight]) rotate([0, 0, 60])
    TriangleOf(len=len) Arrow(len=len, d=cylD, center=true);

  PyramidOf(angle) Arrow(len=len, d=cylD);

  translate([0,0,halfHeight*2])
    rotate([180, 0, 0])
      PyramidOf(angle)
        Arrow(len=len, d=cylD);
}

//PyramidOf(angle=40) translate([0,0,1000]) rotate([180, 0, 0]) Leg();

//color([0,0,1, 0.3]) translate([0,0,770]) cylinder(h=10, d=2000);


Tetrahedron();

