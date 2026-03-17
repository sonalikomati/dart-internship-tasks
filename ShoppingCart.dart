import 'dart:io';

class CartItem {
  String name;
  double price;
  int quantity;

  // Constructor
  CartItem(this.name, this.price, this.quantity);

  // Method to display item details
  void displayItem() {
    print("Item: $name");
    print("Price: ₹$price");
    print("Quantity: $quantity");
    print("Item Total: ₹${getTotal()}");
    print("-----------------------");
  }

  // Method to calculate total price of item
  double getTotal() {
    return price * quantity;
  }
}

void main() {
  // Create list of cart items
  List<CartItem> cart = [];

  stdout.write("Enter number of cart items: ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    print("\nEnter details for item ${i + 1}:");

    stdout.write("Enter item name:");
    String name = stdin.readLineSync()!;

    stdout.write("Enter item price:");
    double price = double.parse(stdin.readLineSync()!);

    stdout.write("Enter item quantity:");
    int qty = int.parse(stdin.readLineSync()!);

    cart.add(CartItem(name, price, qty));
  }

  double grandTotal = 0;

  print("----- Shopping Cart -----\n");

  // Loop through items
  for (int j = 0; j < cart.length; j++) {
    cart[j].displayItem(); // Display each item
    grandTotal += cart[j].getTotal(); // Add to total cart value
  }

  // Print final total
  print("Total Cart Value: ₹$grandTotal");
}
