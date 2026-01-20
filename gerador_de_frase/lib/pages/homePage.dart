import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gerador_de_frase/models/barapp.dart';
import 'package:gerador_de_frase/models/imagenGerada.dart';
import 'package:gerador_de_frase/models/textoFrase.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String frase = "Clique Aqui abaixo para gerar uma frase!";
  Random numeroAleatorio = Random();
  List<String> fraseGeradas = ["Frase1", "Frase2", "Frase3", "Frase4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarApp(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            ImagenGerada(),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsetsGeometry.all(40),
              child: textoFrase(frase),
            ),

            TextButton(
              onPressed: () {
                setState(() {
                  frase = fraseGeradas[numeroAleatorio.nextInt(4)];
                });
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
              ),

              child: Text('Gerar Frase', style: TextStyle(color: Colors.black)),
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
