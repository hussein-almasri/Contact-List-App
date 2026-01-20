import 'package:flutter/material.dart';
import 'ContactDetailsScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> contacts = const [
    {'name': ' Ali', 'phone': '0786177950'},
    {'name': 'hussein', 'phone': '0786188950'},
    {'name': ' Mahmoud', 'phone': '0786950177'},
    {'name': 'Youssef ', 'phone': '0786177932'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('جهات الاتصال'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];

          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(contact['name']!),
            subtitle: Text(contact['phone']!),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContactDetailsScreen(
                    name: contact['name']!,
                    phone: contact['phone']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
