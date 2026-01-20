import 'package:flutter/material.dart';
import 'package:jokenpo/services/barapp.dart';
import 'package:jokenpo/services/paginaPrincipal.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Random geradorDenumero = Random();
  Image imagen = Image.asset("image/padrao.png");

  void numeroGerado() {
    List<String> escolhas = ["pedra", "papel", "tesoura"];
    int numero = geradorDenumero.nextInt(3);

    setState(() {
      imagen = Image.asset("image/${escolhas[numero]}.png");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text("JokenPo")),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              'Escolha do App',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsetsGeometry.all(30), child: imagen),
            SizedBox(height: 40),
            Text(
              "Escolha uma opção abaixo!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsetsGeometry.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      numeroGerado();
                    },
                    child: Image.asset("image/papel.png", width: 100),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset("image/pedra.png", width: 100),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset("image/tesoura.png", width: 100),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
