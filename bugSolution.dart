```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response
      final jsonData = jsonDecode(response.body);
      // Process jsonData
      return jsonData; //return the value
    } else {
      // Handle error status codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('Error decoding JSON: $e');
    rethrow; 
  } catch (e) {
    // Handle exceptions during the network request
    print('Error fetching data: $e');
    rethrow;
  }
}
```