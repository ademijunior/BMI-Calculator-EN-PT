import 'dart:io';

import 'dart:io';

main() {
  print('Welcome to BMI Calculator');
  print('Bem vindo à Calculadora de IMC');
  print('Type your first name / Digite seu primeiro nome:');
  final String? fname = stdin.readLineSync();
  print('Type your last name / Digite seu último nome:');
  final String? lname = stdin.readLineSync();
  print('Insert your height / Insira sua altura:');
  final String? heightString = stdin.readLineSync();
  print('Insert your weight / Insira seu peso:');
  final String? weightString = stdin.readLineSync();

  double height = double.parse(heightString!);
  double weight = double.parse(weightString!);

  double result = weight / (height * height);
  print('$fname $lname');
  print('Your BMI is / Seu IMC é: $result');

  if (result > 25) {
    print('You are fat / Você está gordo');
  } else if (result < 18) {
    print('You are lean / Você está magro');
  } else {
    print('You are at the ideal weight / Você está no peso ideal');
  }
}
