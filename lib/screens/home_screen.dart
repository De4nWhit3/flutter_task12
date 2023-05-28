import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: DatePickerDialog(
          initialDate: DateTime.fromMicrosecondsSinceEpoch(1262296800000),
          firstDate: DateTime.fromMicrosecondsSinceEpoch(946677600000),
          lastDate: DateTime.fromMicrosecondsSinceEpoch(1893448800000),
        ),
      ),
    );
  }
}
