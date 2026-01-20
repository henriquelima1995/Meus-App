import 'package:flutter/material.dart';
import 'dart:math';

import 'package:jokenpo/pages/homePage.dart';

HomePage homePage = HomePage();
Center paginaPrincipal(Image imagen) {
  return Center(
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
                  HomePage();
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
  );
}
