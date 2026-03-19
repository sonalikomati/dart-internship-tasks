import 'dart:io';

void main() async {
  File file = File('example.txt');

  while (true) {
    print("\n----- File Handling Menu -----");
    print("1. Write to File");
    print("2. Read File");
    print("3. Append to File");
    print("4. Exit");

    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        // Write data (overwrite)
        stdout.write("Enter data to write: ");
        String data = stdin.readLineSync()!;
        await file.writeAsString(data + "\n");
        print("Data written successfully.");
        break;

      case 2:
        // Read file
        if (await file.exists()) {
          String content = await file.readAsString();
          print("\nFile Content:\n$content");
        } else {
          print("File does not exist.");
        }
        break;

      case 3:
        // Append data
        stdout.write("Enter data to append: ");
        String data = stdin.readLineSync()!;
        await file.writeAsString(data + "\n", mode: FileMode.append);
        print("Data appended successfully.");
        break;

      case 4:
        print("Program exited.");
        return;

      default:
        print("Invalid choice");
    }
  }
}
