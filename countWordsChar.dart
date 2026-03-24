import 'dart:io';

void main() {
  // Take input from user
  stdout.write("Enter a sentence/paragraph: ");
  String text = stdin.readLineSync()!;

  // Remove leading/trailing spaces
  text = text.trim();

  // Count characters (excluding spaces)
  int charCount = text.replaceAll(" ", "").length;

  // Count words
  List<String> words = text.isEmpty ? [] : text.split(RegExp(r'\s+'));
  int wordCount = words.length;

  // Count sentences (., !, ?)
  List<String> sentences = text.split(RegExp(r'[.!?]+'));
  int sentenceCount = sentences.where((s) => s.trim().isNotEmpty).length;

  // Display results
  print("\n----- Text Analysis -----");
  print("Characters (without spaces): $charCount");
  print("Words: $wordCount");
  print("Sentences: $sentenceCount");
}
