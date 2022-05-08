import 'package:cad_produtos/screens/contact_form.dart';
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
          primaryColor: Colors.green[900],
          appBarTheme: AppBarTheme(color: Colors.green[900]),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: Colors.blueAccent[700]),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary,
          )),
      home: const ContactForm(),
    );
  }
}