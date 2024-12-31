class Produto {
  late String nome;
  late double preco;

  Produto(this.nome, this.preco);
}

imprimirProduto(String nome, double preco){
  print('O produto $nome tem o preço R\$$preco');
}

main () {
  // var nomes = ['Grigor', 'Marta'];
  // print(nomes);

  // // var r = soma(5,9);
  // // print('O valor da soma é: $r');

  // soma(5,6);
  var p1 = Produto('Lapis', 4.99);
  // p1.nome = 'Lapis';
  // p1.preco = 4.59;
  imprimirProduto(p1.nome, p1.preco);
}