class Produto {
  final String codProduto;
  final String descProduto;
  final int qdtProduto;
  final String localProduto;

  Produto(
      this.codProduto, this.descProduto, this.qdtProduto, this.localProduto);

  @override
  String toString() {
    return 'Produto{codProduto: $codProduto, descProduto: $descProduto, qdtProduto: $qdtProduto, localProduto: $localProduto}';
  }
}
