import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorProvider with ChangeNotifier {
  var calculation = TextEditingController();
  var cal = '';
  var result = '';

  void number_pressed(var num) {
    if (num.toString() == 'AC') {
      calculation.text = '';
      cal = '';
      result = '';
    } else {
      cal += num.toString();
      calculation.text = cal;
    }
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
      result = eval.toString();
      cal = eval.toString();
      calculation.text = eval.toString();
    }
    if (num == 'DEL') {
      List c = cal.split('');
      c.removeLast();
      cal = c.join();
      calculation.text = cal;
    }
    notifyListeners();
  }
}
