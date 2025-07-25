import 'package:flutter/material.dart';

class HourlyForecastitem extends StatelessWidget {
  // This widget represents an item in the hourly forecast
  // It displays the time, weather icon, and temperature for that hour
  final String time;
  final String temperature;
  final IconData icon;
  const HourlyForecastitem({
    super.key,
    required this.time,
    required this.temperature,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              time,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Icon(icon, size: 48, color: Colors.white),
            SizedBox(height: 12),

            Text(
              temperature,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
