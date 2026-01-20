import 'package:flutter/material.dart';

class Campodetexto {
  static InputDecoration decora({
    required String nomeDaCaixa,
    required IconData icone,
  }) {
    return InputDecoration(
      // Ativando para pode adicionar cor de fundo
      filled: true,
      // Cor de fundo do campo de texto
      fillColor: Colors.blueGrey,
      // Adicionando um borda
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: Colors.deepPurple, width: 2),
      ),
      hintText: nomeDaCaixa,
      hintStyle: TextStyle(color: Colors.white),
      prefixIcon: Icon(icone, color: Colors.deepPurple),
      suffixIcon: Icon(Icons.visibility_off),
    );
  }
}
