class Circle {
  constructor(radius, x, y) {
    this.radius = radius
    this.x = x || 0
    this.y = y || 0
  }

  diameter () {
    return this.radius * 2;
  }

  area() {
      return Math.PI * this.radius * this.radius;
    }

perimeter() {
    return 2 * Math.PI * this.radius;
  }
}
