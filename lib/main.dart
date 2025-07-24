import 'package:flutter/material.dart';
import 'package:weadther_radar/Widgets/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Weadther App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(appBarTheme: AppBarTheme()),
      home: HomePage(),
    );
  }
}
