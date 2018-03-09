class Rectangle {
  constructor(width, height) {
    this.width = width;
    this.height = height;
  }
}
//
// ```no-highlight
// > new Rectangle(5, 6);
// < ▶ Rectangle {width: 5, height: 6}
// > new Rectangle(4, 6);
// < ▶ Rectangle {width: 4, height: 6}
// > new Rectangle(4, 8);
// < ▶ Rectangle {width: 4, height: 8}
// ```

class Rectangle {
  constructor(width, height) {
    this.width = width;
  //  check if height is provided
  if (!!height) {
    this.height = height;
  } else {
    this.height = width;
   }
 }
}

// > new Rectangle(5, 6)
// < ▶ Rectangle {width: 5, height: 6}
// > new Rectangle(8, 6)
// < ▶ Rectangle {width: 8, height: 6}
// > new Rectangle(9)
// < ▶ Rectangle {width: 9, height: 9}
// > new Rectangle(12)
// < ▶ Rectangle {width: 12, height: 12}
// ```

class Rectangle {
  constructor(width, height) {
    this.width = width;

    if (!!height) {
      this.height = height;
    } else {
      this.height = width;
    }
  }

  area() {
    return this.width * this.height;
  }
}
// ```no-highlight
// > let rectangle = new Rectangle(5, 6);
// > rectangle.area();
// < 30
// > let anotherRectangle = new Rectangle(9);
// > anotherRectangle.area();
// < 81
// ```
