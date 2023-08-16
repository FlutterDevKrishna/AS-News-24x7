import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async'; // Import the Timer class
import 'package:intl/intl.dart';

class TimeViewModel extends ChangeNotifier {
  String apiUrl = 'https://worldtimeapi.org/api/timezone/Asia/Kolkata';

  String currentTime = 'Fetching time...';

  // Add a Timer
  late Timer _timer;

  TimeViewModel() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      fetchTime(); // Fetch time every 10 seconds
    });
  }

  Future<void> fetchTime() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final String fetchedTime = data['utc_datetime'];
      final DateTime localTime = DateTime.parse(fetchedTime);
// Format the times for display
      final DateFormat timeFormat = DateFormat('hh:mm a');
      final String formattedLocalTime = timeFormat.format(localTime);

      currentTime = formattedLocalTime;
      notifyListeners();
    }
  }

  // Cancel the Timer when the ViewModel is disposed
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
