import 'package:calculadora_imc/pessoa.dart';

double calcularIMC(Pessoa pessoa) {
  if (pessoa.altura! <= 0) {
    throw Exception('A altura deve ser maior que zero.');
  }

  return pessoa.peso! / (pessoa.altura! * pessoa.altura!);
}
