import 'package:cad_produtos/models/class.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class cadProdutoForm extends StatefulWidget {
  const cadProdutoForm({Key? key}) : super(key: key);

  @override
  State<cadProdutoForm> createState() {
    return cadProdutoFormState();
  }
}

// ignore: camel_case_types
class cadProdutoFormState extends State<cadProdutoForm> {
  List<String> localizacoes = [
    'Almoxarifado',
    'Montagem',
    'Rejeitados',
    'Acabados'
  ];

  final TextEditingController _codProduto = TextEditingController();
  final TextEditingController _descProduto = TextEditingController();
  final TextEditingController _qdtProduto = TextEditingController();

  String? localizacaoProduto;

  void limpaCampos() {
    _codProduto.clear();
    _descProduto.clear();
    _qdtProduto.clear();
    localizacaoProduto = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro Produto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: _codProduto,
              decoration: const InputDecoration(
                labelText: 'Código do Produto',
              ),
              style: const TextStyle(fontSize: 24.0, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _descProduto,
                decoration:
                    const InputDecoration(labelText: 'Descrição do Produto'),
                style: const TextStyle(fontSize: 24.0, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _qdtProduto,
                decoration: const InputDecoration(labelText: 'Quantidade'),
                style: const TextStyle(fontSize: 24.0, color: Colors.black),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: double.maxFinite,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                  )),
                  items: [
                    DropdownMenuItem(
                      child: Text(localizacoes[0]),
                      value: localizacoes[0],
                    ),
                    DropdownMenuItem(
                      child: Text(localizacoes[1]),
                      value: localizacoes[1],
                    ),
                    DropdownMenuItem(
                      child: Text(localizacoes[2]),
                      value: localizacoes[2],
                    ),
                    DropdownMenuItem(
                      child: Text(localizacoes[3]),
                      value: localizacoes[3],
                    )
                  ],

                  onChanged: (value) => setState(() {
                    localizacaoProduto = value;
                  }),
                  hint: const Text('Localização'),
                  style: const TextStyle(fontSize: 24.0, color: Colors.black),
                  icon: const Icon(Icons.add_location_alt),
                ),
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
                    final int? quantidade = int.tryParse(_qdtProduto.text);
                    final String localizado = localizacaoProduto.toString();
                    final Produto newProduto =
                        Produto(codigo, descricao, quantidade!, localizado);
                    Navigator.pop(context, newProduto);
                  },
                  child: const Text(
                    'Adicionar Produto',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    limpaCampos();
                  },
                  child: const Text(
                    'Limpar',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
