import 'package:flutter/material.dart';
import 'package:weadther_radar/screens/cardone.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.7,
        title: Text(
          "Weadther App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print("refresh");
            },
            icon: Icon(Icons.refresh, color: Colors.white),
          ),
        ],
      ),
      body: Column(children: [FirsrCard()]),
    );
  }
}
