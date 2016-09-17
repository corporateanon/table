use <arrows.scad>;
use <triangles.scad>;

module Leg(openAngle) {
  //12 штук 501.2 мм. 6 штук 446.8 мм. 9 штук 185 мм.

  anglesOne = TriangleAnglesBySides(a=501.2, b=501.2, c=185);
  anglesTwo = TriangleAnglesBySides(a=501.2, b=446.8, c=185);

  echo(anglesOne);
  echo(anglesTwo);

  a = anglesOne[2]/2;
  b = anglesTwo[2]/2;

  color("blue") ArrowType2();
  
  magicAngle = 18.9;

  rotate([magicAngle, 0, 0]) {
    rotate([0, a, 0]) color("red") ArrowType1();
    rotate([0, -a, 0]) color("red") ArrowType1();
  }

  // rotate([0, a, 0]) color("red") ArrowType1();

  // rotate([0, -a, 0]) color("green") ArrowType1();
  // rotate([b, 0, 0]) color("blue") ArrowType2();
}
// module Leg() {
//   //12 штук 501.2 мм. 6 штук 446.8 мм. 9 штук 185 мм.

//   anglesOne = TriangleAnglesBySides(a=501.2, b=501.2, c=185);
//   anglesTwo = TriangleAnglesBySides(a=501.2, b=446.8, c=185);

//   echo(anglesOne);
//   echo(anglesTwo);

//   a = anglesOne[2]/2;
//   b = anglesTwo[2]/2;

//   rotate([0, a, 0]) color("red") ArrowType1();

//   rotate([0, -a, 0]) color("green") ArrowType1();
//   rotate([b, 0, 0]) color("blue") ArrowType2();
// }
