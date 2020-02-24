import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _construirHome();
  }

  Widget _construirHome() {
    return Scaffold(
      appBar: _construirAppBar("Cooking at Home"),
      body: SizedBox(
        height: 275,
        child: _construirCard(),
      ),
    );
  }

  Widget _construirCard() {
    return Card(
      margin: EdgeInsets.all(16), // Adicionando margim em toda a borda
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              construirImagemCard(
                  "https://cdn.guiadacozinha.com.br/wp-content/uploads/2020/02/Bolinho-de-arroz-de-micro-ondas.jpg"),
              construirTituloCard("Microwave rice dumpling"),
            ],
          )
        ],
      ),
    );
  }

  Widget construirImagemCard(String imagem) {
    return Image.network(
      imagem,
      fit: BoxFit.fill,
      height: 238,
    );
  }

  Widget construirTituloCard(String titulo) {
    return Positioned(
      bottom: 10,
      left: 10,
      child: Text(
        titulo,
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  Widget _construirAppBar(String titulo) {
    return AppBar(
      title: Text(titulo),
    );
  }
}
