import 'package:flutter/material.dart';
import 'package:tela_login/models/campoDeTexto.dart';
import 'package:tela_login/models/estilodobotao.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // =========================== Variavel ======================================
  Estilodobotao estilo = Estilodobotao();
  String email = "";
  String senha = "";
  bool incones = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            color: Colors.blueGrey,
            child: Column(
              children: [
                SizedBox(height: 50),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      flex: 8,

                      child: Image.network(
                        "http://hermes.digitalinnovation.one/assets/diome/logo.png",
                      ),

                      //child: Image.asset("assets/image/vasco.pngw"),
                    ),
                    Expanded(child: Container()),
                  ],
                  // ============================================================================
                ),
                SizedBox(height: 20),
                Text(
                  "Já Tem Cadastro?",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),

                SizedBox(height: 10),
                Text("Faça seu login e make the change._"),
                SizedBox(height: 30),
                // ==================== Campos de textos ==========================================
                TextField(
                  decoration: Campodetexto.decora(
                    nomeDaCaixa: "Email",
                    icone: Icons.email,
                  ),
                  onChanged: (valor) {
                    email = valor;
                    print(email);
                  },
                ),
                SizedBox(height: 10),

                TextField(
                  
                  obscureText: incones,
                  decoration: InputDecoration(
                    // Ativando para pode adicionar cor de fundo
                    filled: true,
                    // Cor de fundo do campo de texto
                    fillColor: Colors.blueGrey,
                    // Adicionando um borda
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                        width: 2,
                      ),
                    ),
                    hintText: "Digitar a senha",
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.password_sharp,
                      color: Colors.deepPurple,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          incones = !incones;
                        });
                      },
                      child: Icon(
                        incones ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                  ),
                  onChanged: (valor) {
                    senha = valor;
                    print(senha);
                  },
                ),
                // ======================== Botão ===========================================================
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: estilo.estilo(),

                    onPressed: () {
                      print(email);
                      print(senha);
                    },
                    child: Text('Entrar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
