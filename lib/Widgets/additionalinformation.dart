import 'package:flutter/material.dart';

class AdditionalInformation extends StatelessWidget {
  final IconData icon;
  final String tittle;
  final String value;
  const AdditionalInformation({
    super.key,
    required this.icon,
    required this.tittle,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(9),
        child: Column(
          children: [
            Icon(icon, size: 28, color: Colors.white),
            SizedBox(height: 12),
            Text(tittle, style: TextStyle(fontSize: 16, color: Colors.white)),
            SizedBox(height: 12),
            Text(value, style: TextStyle(fontSize: 24, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
