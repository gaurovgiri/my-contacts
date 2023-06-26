import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactCards extends StatelessWidget {
  final String name, phoneNumber;

  ContactCards(this.name, this.phoneNumber);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // Create a listtile for each contact
          children: [
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Icon(Icons.person),
              ),
              title: Text(name),
              subtitle: Text(phoneNumber),
              // trailing: const Icon(Icons.phone),
              trailing: // create phone and sms
                  Row(mainAxisSize: MainAxisSize.min, children: [
                IconButton(
                  onPressed: () {
                    launchUrl(Uri.parse('tel:$phoneNumber'));
                  },
                  icon: const Icon(Icons.phone),
                ),
                IconButton(
                  onPressed: () {
                    launchUrl(Uri.parse('sms:$phoneNumber'));
                  },
                  icon: const Icon(Icons.sms),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
