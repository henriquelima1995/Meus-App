import "package:flutter/material.dart";

class EntradaCheckBox extends StatefulWidget {
  const EntradaCheckBox({super.key});

  @override
  State<EntradaCheckBox> createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  bool comidaBrasileira = false;
  bool comprarOnline = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Entrada de Texto"),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          CheckboxListTile(
            value: comidaBrasileira,
            onChanged: (bool? value) {
              setState(() {
                comidaBrasileira = value!;
              });
            },
            title: Text("Comida brasileira"),
            subtitle: Text("Melhor comida do brasil"),
          ),
          SizedBox(height: 30),
          CheckboxListTile(
            value: comprarOnline,
            onChanged: (bool? value) {
              setState(() {
                comprarOnline = value!;
              });
            },
            title: Text("Roupa"),
            subtitle: Text("Compras online"),
          ),
          SizedBox(height: 200),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              padding: WidgetStateProperty.all(
                // Definindo o Tamanho do Botão
                EdgeInsets.symmetric(horizontal: 150, vertical: 20),
              ),
              // Remove a borda definindo-a como "none"
              side: WidgetStateProperty.all(BorderSide.none),
              backgroundColor: WidgetStatePropertyAll(Colors.blue),
              // Opcional: Garante que o formato não force uma borda
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  // Define o arredondamento
                  // Garante que a borda do shape seja nula
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide.none,
                ),
              ),
            ),
            child: Text("Salvar"),
          ),
        ],
      ),
    );
  }
}
