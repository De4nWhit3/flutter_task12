import 'package:flutter/material.dart';

class DateQuestionWidget extends StatelessWidget {
  const DateQuestionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => FloatingActionButton(
        foregroundColor: Colors.orange.shade50,
        backgroundColor: Colors.orange.shade400,
        child: const Icon(Icons.date_range),
        onPressed: () => showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now().subtract(
            const Duration(days: 365),
          ),
          lastDate: DateTime.now().add(
            const Duration(days: 365),
          ),
        ),
      ),
    );
  }
}
