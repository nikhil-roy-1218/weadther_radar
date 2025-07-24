import 'package:flutter/material.dart';
import 'package:weadther_radar/screens/hourlyforecast.dart';

class FirsrCard extends StatelessWidget {
  const FirsrCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Mian card
          SizedBox(
            width: 450,
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      "300 °F ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 36,
                      ),
                    ),
                    Icon(Icons.cloud, size: 64),
                    Text(
                      "Rain",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Second card2
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Weadther Forecast",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 12),
          // Second card
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Add some space at the start
                SizedBox(width: 160, child: HourlyForecastitem()),
                SizedBox(width: 160, child: HourlyForecastitem()),
                SizedBox(width: 160, child: HourlyForecastitem()),
                SizedBox(width: 160, child: HourlyForecastitem()),
                SizedBox(width: 160, child: HourlyForecastitem()),
              ],
            ),
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Adittional Information",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
