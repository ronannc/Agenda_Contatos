import 'package:agenda_contatos/components/circle_image.dart';
import 'package:agenda_contatos/components/layout/my_scaffold.dart';
import 'package:agenda_contatos/helpers/contact_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  final Contact? contact;
  final VoidCallback voidCallback;

  const ContactPage({
    super.key,
    this.contact,
    required this.voidCallback
  });

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;

  @override
  void initState() {
    _nameController = TextEditingController(text: widget.contact?.name);
    _emailController = TextEditingController(text: widget.contact?.email);
    _phoneController = TextEditingController(text: widget.contact?.phone);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: widget.contact != null ? 'Contato #${widget.contact!.id}' : 'Novo Contato',
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrangeAccent,
        onPressed: () {
          if (widget.contact != null) {
            widget.contact!.name = _nameController.text;
            widget.contact!.phone = _phoneController.text;
            widget.contact!.email = _emailController.text;
            ContactHelper().updateContact(widget.contact!);
          } else {
            ContactHelper().saveContact(
              Contact(
                name: _nameController.text,
                phone: _phoneController.text,
                email: _emailController.text,
              ),
            );
          }
          widget.voidCallback();
          Navigator.pop(context);
        },
        child: const Icon(Icons.save),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            GestureDetector(
              child: const CircleImage(),
            ),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                label: Text('Nome'),
              ),
            ),
            TextField(
              controller: _phoneController,
              decoration: const InputDecoration(
                label: Text('Telefone'),
              ),
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                label: Text('Email'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
