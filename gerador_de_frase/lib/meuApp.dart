import 'package:flutter/material.dart';
import 'package:gerador_de_frase/pages/homePage.dart';

class MeuApp extends StatefulWidget {
  const MeuApp({super.key});

  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
