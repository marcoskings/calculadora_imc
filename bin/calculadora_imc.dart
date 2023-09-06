import 'dart:io';
import 'package:calculadora_imc/Interpretar_Pessoa.dart';
import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:calculadora_imc/pessoa.dart';

void main(List<String> arguments) {
  print('Calculadora de IMC');

  try {
    // Solicitar o nome, peso e altura do usuário
    stdout.write('Digite o seu nome: ');
    String nome = stdin.readLineSync() ?? '';

    stdout.write('Digite o seu peso em quilogramas: ');
    double peso = double.parse(stdin.readLineSync() ?? '0');

    stdout.write('Digite a sua altura em metros: ');
    double altura = double.parse(stdin.readLineSync() ?? '0');
    
    // Criar um objeto Pessoa
    Pessoa pessoa = Pessoa(nome:nome, peso: peso, altura:altura);

    // Calcular o IMC
    double imc = calcularIMC(pessoa);

    // Exibir o resultado
    print('${pessoa.nome}, seu IMC é: $imc');
    interpretarIMC(imc);
  } catch (e) {
    print('Ocorreu um erro: $e');
  }
}
