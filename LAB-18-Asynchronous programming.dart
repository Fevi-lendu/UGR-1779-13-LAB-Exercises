import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchWeatherData() async {
  final String apiKey = 'YOUR_API_KEY';
  final String city = 'London'; // You can update this with the desired city

  final Uri url = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey');

  final response = await http.get(url);

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to fetch weather data');
  }
}

void main() async {
  try {
    Map<String, dynamic> weatherData = await fetchWeatherData();
    double temperature = (weatherData['main']['temp'] - 273.15); // Converting temperature from Kelvin to Celsius
    String weather = weatherData['weather'][0]['main'];

    print('Current Temperature in ${weatherData['name']}: ${temperature.toStringAsFixed(2)}°C');
    print('Weather Condition: $weather');
  } catch (e) {
    print('An error occurred: $e');
  }
}
