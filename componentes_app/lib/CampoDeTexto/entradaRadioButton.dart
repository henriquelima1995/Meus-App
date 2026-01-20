import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({super.key});

  @override
  State<EntradaRadioButton> createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  // Iniciando uma variavél para entrada do usuario
  String? _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("RadioButton"),
      ),
      body: Container(
        child: Column(
          children: [
            // 1. O RadioGrup agora gerencia o valor e a mudança
            RadioGroup(
              groupValue: _escolhaUsuario,
              onChanged: (String? novoValor) {
                setState(() {
                  _escolhaUsuario = novoValor!;
                  print(_escolhaUsuario);
                });
              },
              child: Column(
                children: [
                  RadioListTile(title: Text("Masculino"), value: "m"),
                  RadioListTile(title: Text("Feminino"), value: "f"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
