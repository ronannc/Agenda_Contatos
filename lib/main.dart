import 'package:agenda_contatos/helpers/contact_helper.dart';
import 'package:agenda_contatos/ui/contact_page.dart';
import 'package:agenda_contatos/ui/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    // home: HomePage(),
    home: ContactPage(contact:  Contact(name: 'asdf', phone: '324234234', email: 'safsadfsa@email')),
    debugShowCheckedModeBanner: false,
  ));
}
