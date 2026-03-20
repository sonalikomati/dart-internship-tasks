import 'dart:io';

// --- Validation Functions ---

String? validateName(String? name) {
  if (name == null || name.trim().isEmpty) {
    return "Name cannot be empty.";
  }
  return null;
}

String? validateEmail(String? email) {
  if (email == null || email.trim().isEmpty) {
    return "Email cannot be empty.";
  }
  // Regular expression for validating an Email
  final emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
  if (!emailRegex.hasMatch(email.trim())) {
    return "Invalid email format (e.g., user@example.com).";
  }
  return null;
}

String? validatePassword(String? password) {
  if (password == null || password.isEmpty) {
    return "Password cannot be empty.";
  }
  if (password.length < 6) {
    return "Password must be at least 6 characters long.";
  }
  return null;
}

String? validateAge(String? ageInput) {
  if (ageInput == null || ageInput.trim().isEmpty) {
    return "Age cannot be empty.";
  }
  final age = int.tryParse(ageInput.trim());
  if (age == null) {
    return "Age must be a valid number. Please enter digits only.";
  }
  if (age < 18) {
    return "Age must be 18 or older.";
  }
  return null;
}

String? validatePhone(String? phone) {
  if (phone == null || phone.trim().isEmpty) {
    return "Phone number cannot be empty.";
  }
  // Regular expression for exactly 10 digits
  final phoneRegex = RegExp(r'^\d{10}$');
  if (!phoneRegex.hasMatch(phone.trim())) {
    return "Phone number must be exactly 10 digits long and contain only numbers.";
  }
  return null;
}

// --- Helper Function for Interactive Loop ---

/// Repeatedly asks the user for input until the validator returns null (meaning it is valid).
String getValidInput(
  String promptMessage,
  String? Function(String?) validator,
) {
  while (true) {
    stdout.write(promptMessage);
    String? input = stdin.readLineSync();

    // Check if the input passes validation
    String? errorMessage = validator(input);

    if (errorMessage == null) {
      // Input is valid, break the loop and return the input
      return input ?? '';
    } else {
      // Input is invalid, show the error and ask again
      print("  ❌ Error: $errorMessage\n");
    }
  }
}

// --- Main Program ---

void main() {
  print("===========================================");
  print("          USER REGISTRATION FORM           ");
  print("===========================================");

  // 1. Show the rules before starting
  print("📋 FORM RULES:");
  print(" 1. All fields are required (cannot be empty).");
  print(" 2. Email must be valid (e.g., john@domain.com).");
  print(" 3. Password must contain at least 6 characters.");
  print(" 4. Age must be a number and >= 18.");
  print(" 5. Phone number must consist of exactly 10 digits.");
  print("===========================================\n");

  // 2. Collect user inputs step-by-step
  // The program will only move to the next line if the current one is valid
  String name = getValidInput("Enter Name: ", validateName);
  String email = getValidInput("Enter Email: ", validateEmail);
  String password = getValidInput("Enter Password: ", validatePassword);
  String age = getValidInput("Enter Age: ", validateAge);
  String phone = getValidInput("Enter Phone (10 digits): ", validatePhone);

  // 3. Final Success Output & Print All Details
  // If the code reaches this point, all fields are guaranteed to be valid
  print("\n===========================================");
  print("✅ Form Submitted Successfully!");
  print("===========================================");
  print("📝 SUBMITTED DETAILS:");
  print("-------------------------------------------");
  print("Name     : ${name.trim()}");
  print("Email    : ${email.trim()}");
  print("Password : $password"); // Printing password as requested
  print("Age      : ${age.trim()} years old");
  print("Phone    : ${phone.trim()}");
  print("===========================================");
}
