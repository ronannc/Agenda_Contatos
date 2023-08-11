import 'package:agenda_contatos/components/card_list_component.dart';
import 'package:agenda_contatos/components/layout/my_scaffold.dart';
import 'package:agenda_contatos/helpers/contact_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ContactHelper contactHelper = ContactHelper();
  List<Contact> contacts = [];

  @override
  void initState() {
    contactHelper.saveContact(Contact(name: 'Ronan', phone: '23423424', email: 'email'));
    _setContacts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: 'Contatos',
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepOrangeAccent,
        child: const Icon(Icons.add),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(10),
              children: [
                for (Contact contact in contacts) CardListComponent(contact: contact),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _setContacts() {
    contactHelper.getAllContacts().then((value) {
      setState(() {
        contacts = value;
      });
    });
  }
}
