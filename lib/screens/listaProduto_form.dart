import 'package:flutter/material.dart';
import 'cadProduto_form.dart';

// ignore: camel_case_types
class prodList extends StatefulWidget {
  const prodList({Key? key}) : super(key: key);

  @override
  State<prodList> createState() => _prodListState();
}

// ignore: camel_case_types
class _prodListState extends State<prodList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produtos'),
      ),
      body: ListView(),
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
