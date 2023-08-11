import 'package:agenda_contatos/helpers/contact_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final FloatingActionButton? floatingActionButton;

  const MyScaffold({
    super.key,
    required this.title,
    required this.body,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: Text(title),
      ),
      floatingActionButton: floatingActionButton,
      body: body,
    );
  }
}
