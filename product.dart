class Product {
  String name;
  double price;

  Product(this.name, this.price);

  void displayProduct() {
    print("Product Name: $name");
    print("Price: ₹$price");
    print("-------------------");
  }
}

void main() {
  Product p1 = Product("Laptop", 55000);
  Product p2 = Product("Mobile", 25000);
  Product p3 = Product("Headphones", 3000);

  p1.displayProduct();
  p2.displayProduct();
  p3.displayProduct();
}
