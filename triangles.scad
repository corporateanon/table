

// Three angles by three sides
// @see https://en.wikipedia.org/wiki/Solution_of_triangles


function TriangleAnglesBySides(a, b, c) = 
  let(
    alpha = acos((b*b + c*c - a*a) / (2*b*c)),
    beta = acos((a*a + c*c - b*b) / (2*a*c)),
    gamma = 180 - alpha - beta
  ) [alpha, beta, gamma];
