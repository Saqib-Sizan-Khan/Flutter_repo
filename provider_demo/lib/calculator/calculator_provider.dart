import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorProvider with ChangeNotifier {
  var calculation = TextEditingController();
  var cal = '';
  var result = '';
  double fontsize = 40;

  void number_pressed(var num) {
    if (num.toString() == 'AC') {
      calculation.text = '';
      cal = '';
      result = '';
    } else {
      cal += num.toString();
      calculation.text = cal;
    }

    cal.length >= 25 ? fontsize = 30 : fontsize = 40;
    notifyListeners();
  }

  void calculate(var num) {
    if (num == '+' || num == '-' || num == '/' || num == 'x') {
      cal += num.toString();
      calculation.text = cal;
    }
    if (num == '=') {
      String finaluserinput = cal.replaceAll('x', '*');
      Parser p = Parser();
      Expression exp = p.parse(finaluserinput);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);

      if (eval.toString().length <= 8) {
        result = eval.toString();
        cal = eval.toString();
        calculation.text = eval.toString();
      } else {
        String substr = eval.toString().substring(0, 8);
        result = substr;
        cal = substr;
        calculation.text = substr;
      }
    }
    if (num == 'DEL') {
      List c = cal.split('');
      c.removeLast();
      cal = c.join();
      calculation.text = cal;
    }

    cal.length >= 25 ? fontsize = 30 : fontsize = 40;
    notifyListeners();
  }

  dynamic findValue(int index) {
    if (index == 0) return 7;
    if (index == 1) return 8;
    if (index == 2) return 9;
    if (index == 3) return '+';
    if (index == 4) return 4;
    if (index == 5) return 5;
    if (index == 6) return 6;
    if (index == 7) return '-';
    if (index == 8) return 1;
    if (index == 9) return 2;
    if (index == 10) return 3;
    if (index == 11) return 'x';
    if (index == 12) return 0;
    if (index == 13) return 'AC';
    if (index == 14) return '.';
    if (index == 15) return '/';
    if (index == 16) return 'DEL';
    if (index == 17) return '=';
  }

  bool isOperator(var num) {
    if (num == 'DEL' ||
        num == '+' ||
        num == '-' ||
        num == 'x' ||
        num == '/' ||
        num == '=') {
      return true;
    } else {
      return false;
    }
  }
}
