import 'package:flutter/material.dart';

class HourlyForecastitem extends StatelessWidget {
  const HourlyForecastitem({super.key});

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
              "9:00 AM",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Icon(Icons.cloud, size: 48, color: Colors.white),
            SizedBox(height: 12),

            Text("301.17", style: TextStyle(fontSize: 24, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
