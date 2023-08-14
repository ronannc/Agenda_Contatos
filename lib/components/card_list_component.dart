import 'package:agenda_contatos/components/circle_image.dart';
import 'package:agenda_contatos/helpers/contact_helper.dart';
import 'package:agenda_contatos/ui/contact_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CardListComponent extends StatelessWidget {
  final Contact contact;
  final Function({Contact contact}) contactPageNavigator;
  const CardListComponent({super.key, required this.contact, required this.contactPageNavigator});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        contactPageNavigator(contact: contact);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              const CircleImage(),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      contact.name,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      contact.email,
                    ),
                    Text(
                      contact.phone,
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
