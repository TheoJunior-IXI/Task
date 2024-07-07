abstract class Shape {
  //Method to calculate area of the shapes...
  double area();
}

class Circle extends Shape {
  // data members...
  double pi = 3.14;
  double radius;
  // constructor
  Circle(this.radius);
  // method to calculate
  @override
  double area(){
    var area =   pi*(radius*radius); 
    print("the area of the circle is $area");
    return area;
  }

}

class Rectangle extends Shape{
  // data members...
  double height, width;
  // constructor
  Rectangle(this.height, this.width);
  // method to calculate
  @override
  double area(){
    var area;
    area  = height*width;
    print("the area of the rectangle is $area");
    return area;
  }

}



void main(List<String> args) {
  Circle circle = Circle(10);
  Rectangle rect = Rectangle(3,4);
  circle.area();
  rect.area();
}