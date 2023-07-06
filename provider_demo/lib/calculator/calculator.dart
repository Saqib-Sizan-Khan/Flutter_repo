import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorUI extends StatefulWidget {
  const CalculatorUI({super.key});

  @override
  State<CalculatorUI> createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI> {
  var calculation = TextEditingController();
  var cal = '';
  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      result.toString(),
                      style:
                          TextStyle(fontSize: 80, color: Colors.indigoAccent),
                    ),
                    TextField(
                      controller: calculation,
                      style:
                          TextStyle(fontSize: 40, color: Colors.indigoAccent),
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Number_Button(7),
                      Number_Button(8),
                      Number_Button(9),
                      Operator_Button('+')
                    ],
                  ),
                  Row(
                    children: [
                      Number_Button(4),
                      Number_Button(5),
                      Number_Button(6),
                      Operator_Button('-')
                    ],
                  ),
                  Row(
                    children: [
                      Number_Button(1),
                      Number_Button(2),
                      Number_Button(3),
                      Operator_Button('x')
                    ],
                  ),
                  Row(
                    children: [
                      Number_Button(0),
                      Number_Button('AC'),
                      Operator_Button('DE'),
                      Operator_Button('/')
                    ],
                  ),
                  Operator_Button('=')
                ],
              )),
        ],
      ),
    );
  }

  Widget Number_Button(var num) {
    return Container(
      width: 80,
      height: 80,
      margin: EdgeInsets.all(10),
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.indigo,
          ),
          onPressed: () {
            setState(() {
              if (num.toString() == 'AC') {
                calculation.text = '';
                cal = '';
                result = '';
              } else {
                cal += num.toString();
                calculation.text = cal;
              }
            });
          },
          child: Text(num.toString(),
              style: TextStyle(fontSize: 40, color: Colors.white))),
    );
  }

  Widget Operator_Button(var num) {
    return Container(
      width: 80,
      height: 80,
      margin: EdgeInsets.all(10),
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.cyanAccent,
          ),
          onPressed: () {
            setState(() {
              calculate(num);
            });
          },
          child: Text(num.toString(),
              style: TextStyle(fontSize: 40, color: Colors.indigo))),
    );
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
    if (num == 'DE') {
      List c = cal.split('');
      c.removeLast();
      cal = c.join();
      calculation.text = cal;
    }
  }
}
