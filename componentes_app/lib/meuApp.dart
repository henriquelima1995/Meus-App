// ignore_for_file: unused_import

import 'package:componentes_app/CampoDeTexto/campoTexto.dart';
import 'package:componentes_app/CampoDeTexto/entradaCheckBox.dart';
import 'package:componentes_app/CampoDeTexto/entradaRadioButton.dart';
import 'package:componentes_app/CampoDeTexto/entradaSwitch.dart';
import 'package:flutter/material.dart';

class Meuapp extends StatelessWidget {
  const Meuapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EntradaSwitch(),
      //home: EntradaRadioButton(),
      //home: CampoTexto(),
      //home: EntradaCheckBox(),
    );
  }
}
