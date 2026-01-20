import 'package:flutter/material.dart';

class ContactDetailsScreen extends StatelessWidget {
  final String name;
  final String phone;

  const ContactDetailsScreen({
    super.key,
    required this.name,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تفاصيل جهة الاتصال'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'رقم الهاتف: $phone',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('رجوع'),
            ),
          ],
        ),
      ),
    );
  }
}
