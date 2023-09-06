import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:calculadora_imc/pessoa.dart';
import 'package:test/test.dart';

void main() {
  var pessoaValida = Pessoa(nome:'João',peso:70,altura:1.75);
  test('calculate', () {
    expect(calcularIMC(pessoaValida) , closeTo(22.86, 0.01));
  });
}
