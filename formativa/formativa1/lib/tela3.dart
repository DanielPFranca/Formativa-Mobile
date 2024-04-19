import 'package:flutter/material.dart';

class Tela3 extends StatefulWidget {
  String nome;
  String preco;
  String quantidade;
  Tela3(this.nome, this.preco, this.quantidade);

  @override
  State<Tela3> createState() => _Tela3State();
}

class _Tela3State extends State<Tela3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informações'),
      ),
      body: Column(
        children: [
          Text("Nome Produto: ${widget.nome}"),
          Text("Preço Produto:${widget.preco}"),
          Text("Quantidade: ${widget.quantidade}")
        ],
      ),
    );
  }
}
