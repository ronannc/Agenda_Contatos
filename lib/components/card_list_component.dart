import 'dart:io';

import 'package:agenda_contatos/components/circle_image.dart';
import 'package:agenda_contatos/helpers/contact_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardListComponent extends StatelessWidget {
  const CardListComponent({super.key, required this.contact});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              const CircleImage(),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      contact.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
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

