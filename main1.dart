import 'dart:async';

// Simulate fetching weather data from an API with a 3-second delay
Future<String> fetchWeatherData() async {
  return Future.delayed(Duration(seconds: 3), () {
    // Simulating a successful API response (can throw an exception to simulate an error)
    return 'Weather: Sunny, 25°C';
    // Uncomment the line below to simulate an error:
    // throw Exception('Failed to fetch weather data');
  });
}

void main() async {
  print('Fetching weather data...');

  try {
    // Wait for the fetchWeatherData to complete
    String weather = await fetchWeatherData();
    print('Weather data fetched: $weather');
  } catch (e) {
    // Handle any errors that occur during the fetch
    print('Error: $e');
  }

  print('Process complete.');
}
