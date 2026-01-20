void main() {
  String numero = "1.58";
  String numeros = "1,87";

  double numero1 = double.parse(numero);
  double? numeros1 = double.tryParse(numeros);
  if (numeros1 == null) {
    print("Erro");
  }
  print(numero1);
  print(numeros);
}
