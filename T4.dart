abstract class Serializable {
   toJSON();
}

class User implements Serializable {
 // data members...
 String name;
 int id, age;
 // constructor
 User(this.id,this.name, this.age);
 // implement method
 @override
  toJSON() {
    return ("User ID : $id  User Name : $name  User Age : $age");
  }

}

class Product implements Serializable {
  // data members...
  String name;
  int id, price;
  // constructor
Product(this.id, this.name, this.price);
  // implement method
@override
toJSON() {
    return ("Product ID : $id  Product Name : $name  Product Price $price");
  }

}

void main(List<String> args) {
  User user1 = User (1, "Halim", 21);
  Product p1 = Product (15, "Iphone 15 pro max", 61000);
  print(user1.toJSON());
  print("----------------------------------------------------"); 
  print(p1.toJSON());
}