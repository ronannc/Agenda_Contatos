import 'package:agenda_contatos/components/card_list_component.dart';
import 'package:agenda_contatos/components/layout/my_scaffold.dart';
import 'package:agenda_contatos/helpers/contact_helper.dart';
import 'package:agenda_contatos/ui/contact_page.dart';
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

    _setContacts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: 'Contatos',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _contactPageNavigator();
        },
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
                for (Contact contact in contacts) CardListComponent(contact: contact, contactPageNavigator: _contactPageNavigator),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _setContacts() {
    contactHelper.getAllContacts().then((value) {
      setState(() {
        contacts = value;
      });
    });
  }

  void _contactPageNavigator({Contact? contact}){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ContactPage(contact: contact, voidCallback: _setContacts,)));
  }
}
