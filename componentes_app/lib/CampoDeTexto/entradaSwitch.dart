import "package:flutter/material.dart";

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({super.key});

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool cliqueUsuario = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada Switch'),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: cliqueUsuario,
            title: Text("Clique no botão"),
            onChanged: (bool valor) {
              setState(() {
                cliqueUsuario = valor;
              });
            },
          ),
        ],
      ),
    );
  }
}
