import 'package:flutter/material.dart';

class Estilodobotao {
  ButtonStyle estilo() {
    return ButtonStyle(
      // Cor de fundo
      backgroundColor: WidgetStateProperty.all(Colors.deepPurple),
      // Cor de texto
      foregroundColor: WidgetStateProperty.all(Colors.white),
      // Borda do botão
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    );
  }
}
