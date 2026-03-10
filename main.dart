// import 'dart:convert'; // For jsonDecode
// import 'package:http/http.dart' as http; // For making API requests

// void main() async {
//   print("Fetching data...");

//   // 1. Define the API endpoint
//   final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

//   try {
//     // 2. Make the HTTP GET request
//     final response = await http.get(url);

//     // 3. Check for success status code (200 OK)
//     if (response.statusCode == 200) {
//       // 4. Parse the JSON string into a Dart List
//       // The API returns a List of objects [{}, {}, ...]
//       final List<dynamic> posts = jsonDecode(response.body);

//       print(
//         "\n--- Success! Fetched ${posts.length} posts. Showing the top 5: ---\n",
//       );

//       // 5. Loop through the first 5 items and display titles
//       for (var i = 0; i < 5; i++) {
//         final post = posts[i];
//         print("ID: ${post['id']}");
//         print("Title: ${post['title']}");
//         print("-" * 30); // Separator line
//       }
//     } else {
//       // Handle server errors (e.g., 404 Not Found, 500 Server Error)
//       print('Request failed with status: ${response.statusCode}.');
//     }
//   } catch (e) {
//     // 6. Handle network errors (e.g., no internet, invalid URL)
//     print('An error occurred during the request:');
//     print(e);
//   }
// }
