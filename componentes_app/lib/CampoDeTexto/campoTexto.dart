import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController salvarController = TextEditingController();
  String texto = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Entrado de texto", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          // Adicionando um padding:
          Padding(
            // Adicionando o tamanho do padding:
            padding: EdgeInsetsGeometry.all(40),
            // Adicionando o Textfield
            child: TextField(
              // Tipo de teclado:
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Digite seu email",
                labelStyle: TextStyle(color: Colors.purple),

                prefixIcon: Icon(Icons.email, color: Colors.purple),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.purple, width: 2),
                ),
                suffix: Icon(Icons.visibility_off),
                prefix: Icon(Icons.email),
              ),
              onSubmitted: (value) {},
              controller: salvarController,
            ),
          ),
          TextButton(
            onPressed: () {
              print("Você acabou de Salvar ${salvarController.text}");
              setState(() {
                texto = salvarController.text;
              });
            },
            child: Text("Salvar"),
          ),
          SizedBox(height: 50),
          Text(texto),
        ],
      ),
    );
  }
}
