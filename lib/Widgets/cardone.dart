import 'package:flutter/material.dart';
import 'package:weadther_radar/Widgets/additionalinformation.dart';
import 'package:weadther_radar/Widgets/hourlyforecast.dart';
import 'package:http/http.dart' as http;
import 'package:weadther_radar/api.dart';

class FirsrCard extends StatefulWidget {
  const FirsrCard({super.key});

  @override
  State<FirsrCard> createState() => _FirsrCardState();
}

class _FirsrCardState extends State<FirsrCard> {
  @override
  initState() {
    super.initState();
    getCurrentWeadther();
  }

  Future getCurrentWeadther() async {
    final result = await http.get(
      Uri.parse(
        "https://api.weatherapi.com/v1/forecast.json?key=bf4adcdfbabc479682b55217252507&q=Patna&days=3&aqi=no&alerts=no",
      ),
    );
    if (result.statusCode == 200) {
      print("Weadther data fetched successfully");
      // You can parse the JSON response here if needed
    } else {
      print("Failed to fetch weadther data: ${result.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Add some space at the start
                SizedBox(
                  width: 160,
                  child: HourlyForecastitem(
                    time: "9:00 AM",
                    temperature: "301.17 °F",
                    icon: Icons.cloud,
                  ),
                ),
                SizedBox(
                  width: 160,
                  child: HourlyForecastitem(
                    time: "10:00 AM",
                    temperature: "302.15 °F",
                    icon: Icons.wb_sunny,
                  ),
                ),
                SizedBox(
                  width: 160,
                  child: HourlyForecastitem(
                    time: "11:00 AM",
                    temperature: "303.20 °F",
                    icon: Icons.cloud_circle,
                  ),
                ),
                SizedBox(
                  width: 160,
                  child: HourlyForecastitem(
                    time: "12:00 PM",
                    temperature: "304.25 °F",
                    icon: Icons.wb_sunny,
                  ),
                ),
                SizedBox(
                  width: 160,
                  child: HourlyForecastitem(
                    time: "1:00 PM",
                    temperature: "305.30 °F",
                    icon: Icons.wb_cloudy,
                  ),
                ),
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
          // Third card
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 125,
                child: AdditionalInformation(
                  icon: Icons.water_drop,
                  tittle: "Humidity",
                  value: "94",
                ),
              ),
              SizedBox(
                width: 125,
                child: AdditionalInformation(
                  icon: Icons.air,
                  tittle: "wind Speed",
                  value: 94.toString(),
                ),
              ),
              SizedBox(
                width: 125,
                child: AdditionalInformation(
                  icon: Icons.beach_access,
                  tittle: "Pressure",
                  value: "1012",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
