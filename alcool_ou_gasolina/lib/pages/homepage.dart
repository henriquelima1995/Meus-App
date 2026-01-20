import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController gasolinaControlle = TextEditingController();
  TextEditingController alcoolControlle = TextEditingController();
  String texto = "";

  void calcular() {
    double? gasolina = double.tryParse(gasolinaControlle.text);
    double? alcool = double.tryParse(alcoolControlle.text);

    if (gasolina == null || alcool == null) {
      setState(() {
        texto = "Número inválido Digite o número corretamente";
      });
    } else {
      if ((alcool / gasolina) >= 0.7) {
        setState(() {
          texto = "Melhor abastecer com gasolina";
        });
      } else {
        setState(() {
          texto = "Melhor abastecer com Álcool";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text("Álcool ou Gasolina"),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("image/logo.png"),
              SizedBox(height: 30),
              Text(
                "Saiba qual a melhor opção para abastecer seu carro",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              TextField(
                controller: alcoolControlle,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text('Preço do Álcool Ex: 4.50'),
                ),
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 30),
              TextField(
                controller: gasolinaControlle,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text('Preço do Gasolina Ex: 6.50'),
                ),
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 30),
              TextButton(
                style: ButtonStyle(
                  // Cor do botão
                  backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
                  // Tamanho do botão
                  minimumSize: WidgetStateProperty.all(Size(350, 54)),
                  // Borda do botão
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ), // Define o arredondamento
                      side: BorderSide
                          .none, // Garante que a borda do shape seja nula
                    ),
                  ),
                ),
                onPressed: () {
                  calcular();
                },
                child: Text(
                  "Calcular",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                texto,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
