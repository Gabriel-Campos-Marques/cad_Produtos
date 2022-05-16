class Produto {
  final String codProduto;
  final String descProduto;
  final int qtdProduto;
  final String? localProduto;
  final String? unidadeMedida;

  Produto(
    this.codProduto,
    this.descProduto,
    this.qtdProduto,
    this.localProduto,
    this.unidadeMedida,
  );

  @override
  String toString() {
    return 'Produto{codProduto: $codProduto, descProduto: $descProduto, qdtProduto: $qtdProduto, localProduto: $localProduto, unidadeMedida: $unidadeMedida}';
  }
}
