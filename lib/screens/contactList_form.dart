import 'package:flutter/material.dart';
import 'contact_form.dart';

// ignore: camel_case_types
class prodList extends StatelessWidget {
  const prodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produtos'),
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text(
                'Gabriel',
                style: TextStyle(fontSize: 24.0),
              ),
              subtitle: Text(
                '1000',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
            MaterialPageRoute(builder: (context) => const cadProdutoForm()),
          )
              .then(
                (newProduto) => debugPrint(newProduto.toString()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}