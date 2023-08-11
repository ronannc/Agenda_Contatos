import 'package:agenda_contatos/components/circle_image.dart';
import 'package:agenda_contatos/components/layout/my_scaffold.dart';
import 'package:agenda_contatos/helpers/contact_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  final Contact contact;

  const ContactPage({super.key, required this.contact});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: 'Novo Contato',
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            GestureDetector(
              child: const CircleImage(),
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('Nome')
              ),
            ),
            TextField(),
            TextField(),
          ],
        ),
      ),
    );
  }
}
