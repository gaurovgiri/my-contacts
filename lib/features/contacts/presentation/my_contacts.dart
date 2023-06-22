import 'package:flutter/material.dart';
import 'package:my_contact/features/contacts/data/contact.dart';

List<Contact> contacts = [
  Contact('John Doe', '+1 123-456-7890'),
  Contact('Jane Smith', '+1 234-567-8901'),
  Contact('David Johnson', '+1 345-678-9012'),
  Contact('Emily Davis', '+1 456-789-0123'),
  Contact('Michael Wilson', '+1 567-890-1234'),
  Contact('Olivia Taylor', '+1 678-901-2345'),
  Contact('Ethan Anderson', '+1 789-012-3456'),
  Contact('Sophia Martinez', '+1 890-123-4567'),
  Contact('Daniel Thompson', '+1 901-234-5678'),
  Contact('Ava Clark', '+1 012-345-6789'),
];

class MyContactsDesign extends StatelessWidget {
  const MyContactsDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // Create a listtile for each contact
              children: [
                ListTile(
                  leading: const Icon(Icons.person),
                  trailing: const Icon(Icons.phone),
                  title: Text(contacts[index].name),
                  subtitle: Text(contacts[index].contact),
                )
              ],
            ),
          ),
        );
      },
    ));
  }
}
