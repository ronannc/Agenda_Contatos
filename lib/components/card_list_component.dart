import 'dart:io';

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
              Text(contact.name),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/no_image.jpg'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
