import 'dart:io';

class Item {
  String name;
  double price;
  int quantity;

  Item(this.name, this.price, this.quantity);

  double calculateTotal() {
    return price * quantity;
  }

  void displayDetails() {
    print("Item: $name");
    print("Price: ₹$price");
    print("Quantity: $quantity");
    print("Total: ₹${calculateTotal()}");
    print("-----------------------");
  }
}

void main() {
  List<Item> items = [Item("Pen", 10, 2), Item("Notebook", 50, 1)];

  while (true) {
    print("\n----- Order Bill Generator -----");
    print("1. Add Item");
    print("2. Display Bill");
    print("3. Exit");

    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write("Enter item name: ");
        String name = stdin.readLineSync()!;

        stdout.write("Enter price: ");
        double price = double.parse(stdin.readLineSync()!);

        stdout.write("Enter quantity: ");
        int quantity = int.parse(stdin.readLineSync()!);

        items.add(Item(name, price, quantity));
        print("Item added successfully.");
        break;

      case 2:
        double total = 0;
        print("\n----- Bill Details -----");

        for (var item in items) {
          item.displayDetails();
          total += item.calculateTotal();
        }

        print("Total Bill for all items: ₹$total");
        break;

      case 3:
        print("Program exited.");
        return;

      default:
        print("Invalid choice");
    }
  }
}
