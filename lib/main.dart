import 'package:cad_produtos/screens/listaProduto_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const cadProduto());
}

// ignore: camel_case_types
class cadProduto extends StatelessWidget {
  const cadProduto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blueAccent[900],
          appBarTheme: AppBarTheme(color: Colors.blueAccent[900]),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: Colors.blue[700]),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary,
          )),
      home: const prodList(),
    );
  }
}