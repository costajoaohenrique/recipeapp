import 'package:flutter/material.dart';

void main() => runApp(RecipeApp());

class RecipeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cooking at Home"),
        ),
        body: SizedBox(
          height: 275,
          child: Card(
            margin: EdgeInsets.all(16), // Adicionando margim em toda a borda
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.network(
                      "https://cdn.guiadacozinha.com.br/wp-content/uploads/2020/02/Bolinho-de-arroz-de-micro-ondas.jpg",
                      fit: BoxFit.fill,
                      height: 238,
                    ),
                    Positioned(
                        bottom: 10,
                        left: 10,
                        child: Text(
                          "Microwave rice dumpling",
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
