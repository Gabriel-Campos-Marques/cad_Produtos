import 'package:flutter/material.dart';

import '../models/class.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _codProduto = TextEditingController();
  final TextEditingController _descProduto = TextEditingController();
  final TextEditingController _qdtProduto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _codProduto,
              decoration: const InputDecoration(labelText: 'Full name'),
              style: const TextStyle(fontSize: 24.0),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _descProduto,
                decoration: const InputDecoration(labelText: 'Account Number'),
                style: const TextStyle(fontSize: 24.0),
              ),
            ),Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _qdtProduto,
                decoration: const InputDecoration(labelText: 'Account Number'),
                style: const TextStyle(fontSize: 24.0),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    final String codigo = _codProduto.text;
                    final String descricao = _descProduto.text;
                    final Contact newContact = Contact(codigo, descricao);
                    Navigator.pop(context, newContact);
                  },
                  child: const Text('Create'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
