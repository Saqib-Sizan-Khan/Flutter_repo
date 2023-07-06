import 'package:flutter/material.dart';

class CalculatorUI extends StatefulWidget {
  const CalculatorUI({super.key});

  @override
  State<CalculatorUI> createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI> {
  var calculation = TextEditingController();
  String cal = '';
  int result = 0;
  String digit = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
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
                      style: TextStyle(fontSize: 80, color: Colors.indigoAccent),
                    ),
                    TextField(
                      controller: calculation,
                      style: TextStyle(fontSize: 40, color: Colors.indigoAccent),
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
                      Operator_Button('=')
                    ],
                  ),
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
                result = 0;
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

  // void calculate (var num) {
  //   cal += num.toString();
  //   calculation.text = cal;
  //   print(cal);
  //   for (var i = 0; i<cal.length; i++) {
  //     digit += cal[i];
  //     if (cal[i] == '+') {
  //
  //     }
  //   }
  // }

  void calculate(var num) {
    cal += num.toString();
    calculation.text = cal;
    var res = cal.split(num.toString());
    res.removeAt(res.length-1);
    if (res.length > 1) {
      if (num.toString() == '+') {
        result = int.parse(res[0]) + int.parse(res[1]);
        res.clear();
        res.add(result.toString());
        cal = result.toString() + num;
      }
      if (num.toString() == '-') {
        result = int.parse(res[0]) - int.parse(res[1]);
        res.clear();
        res.add(result.toString());
        cal = result.toString() + num;
      }
      if (num.toString() == 'x') {
        result = int.parse(res[0]) * int.parse(res[1]);
        res.clear();
        res.add(result.toString());
        cal = result.toString() + num;
      }
      if (num.toString() == '=') {
        result = int.parse(res[0]) + int.parse(res[1]);
        res.clear();
        res.add(result.toString());
        cal = result.toString() + num;
      }
    }
    // result = 0;
    // for (var i = count; i < res.length; i++) {
    //   result += int.parse(res[i]);
    // }
    // count += 1;
  }
}
