import 'package:flutter/material.dart';
import 'package:my_contact/features/contacts/presentation/my_contacts.dart';

void main() {
  runApp(const MyContacts());
}

class MyContacts extends StatelessWidget {
  const MyContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyContactsDesign(),
      debugShowCheckedModeBanner: false,
    );
  }
}
