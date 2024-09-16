import 'dart:io';

void main(List<String> arguments) {
  String n = stdin.readLineSync()!;
  
  while (true) {
    if (n.contains('*')) {
      int i = n.indexOf('*');
      String number1 = '';
      int n1 = i + 1;
      while (n1 < n.length && !'+-*/'.contains(n[n1])) {
        number1 += n[n1];
        n1++;
      }
      String number2 = '';
      int n2 = i - 1;
      while (n2 >= 0 && !'+-*/'.contains(n[n2])) {
        number2 = n[n2] + number2;
        n2--;
      }
      double first = double.parse(number2);
      double second = double.parse(number1);
      double result = first * second;
      String resNum = n.substring(n2 + 1, n1);
      n = n.replaceFirst(resNum, result.toString());
    } else if (n.contains('/')) {
      int i = n.indexOf('/');
      String number1 = '';
      int n1 = i + 1;
      while (n1 < n.length && !'+-*/'.contains(n[n1])) {
        number1 += n[n1];
        n1++;
      }
      String number2 = '';
      int n2 = i - 1;
      while (n2 >= 0 && !'+-*/'.contains(n[n2])) {
        number2 = n[n2] + number2;
        n2--;
      }
      double first = double.parse(number2);
      double second = double.parse(number1);
      double result = first / second;
      String resNum = n.substring(n2 + 1, n1);
      n = n.replaceFirst(resNum, result.toString());
    } else if (n.contains('+')) {
      int i = n.indexOf('+');
      String number1 = '';
      int n1 = i + 1;
      while (n1 < n.length && !'+-*/'.contains(n[n1])) {
        number1 += n[n1];
        n1++;
      }
      String number2 = '';
      int n2 = i - 1;
      while (n2 >= 0 && !'+-*/'.contains(n[n2])) {
        number2 = n[n2] + number2;
        n2--;
      }
      double first = double.parse(number2);
      double second = double.parse(number1);
      double result = first + second;
      String resNum = n.substring(n2 + 1, n1);
      n = n.replaceFirst(resNum, result.toString());
    } else if (n.contains('-')) {
      int i = n.indexOf('-');
      String number1 = '';
      int n1 = i + 1;
      while (n1 < n.length && !'+-*/'.contains(n[n1])) {
        number1 += n[n1];
        n1++;
      }
      String number2 = '';
      int n2 = i - 1;
      while (n2 >= 0 && !'+-*/'.contains(n[n2])) {
        number2 = n[n2] + number2;
        n2--;
      }
      double first = double.parse(number2);
      double second = double.parse(number1);
      double result = first - second;
      String resNum = n.substring(n2 + 1, n1);
      n = n.replaceFirst(resNum, result.toString());
    }

    double? result = double.tryParse(n);
    if (result != null) {
      print(result);
      return;
    }
  }
}
