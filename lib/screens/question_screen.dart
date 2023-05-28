import 'package:flutter/material.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questions'),
        backgroundColor: Colors.orange.shade900,
      ),
      backgroundColor: Colors.orange.shade300,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.orange.shade700,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange.shade900.withOpacity(.9),
                      blurRadius: 10,
                    )
                  ],
                ),
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  children: [
                    const Text('Question Text'),
                    Builder(
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
