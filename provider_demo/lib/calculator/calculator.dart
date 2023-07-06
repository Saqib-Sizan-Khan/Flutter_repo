import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/calculator/calculator_provider.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CalculatorProvider>(
      create: (context) => CalculatorProvider(),
      child: const CalculatorUI(),
    );
  }
}

class CalculatorUI extends StatelessWidget {
  const CalculatorUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.inverseSurface,
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
                    Consumer<CalculatorProvider>(
                      builder: (context, value, child) => Text(
                        '${value.result}',
                        style: const TextStyle(
                            fontSize: 80, color: Colors.indigoAccent),
                      ),
                    ),
                    Consumer<CalculatorProvider>(
                        builder: (context, value, child) => TextField(
                              controller: value.calculation,
                              style: const TextStyle(
                                  fontSize: 40, color: Colors.indigoAccent),
                            ))
                  ],
                ),
              )),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.all(10),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.indigo,
                            ),
                            onPressed: () {
                              Provider.of<CalculatorProvider>(context,
                                      listen: false)
                                  .number_pressed(7);
                            },
                            child: Text('7',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white))),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.all(10),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.indigo,
                            ),
                            onPressed: () {
                              Provider.of<CalculatorProvider>(context,
                                      listen: false)
                                  .number_pressed(8);
                            },
                            child: Text('8',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white))),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.all(10),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.indigo,
                            ),
                            onPressed: () {
                              Provider.of<CalculatorProvider>(context,
                                      listen: false)
                                  .number_pressed(9);
                            },
                            child: Text('9',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white))),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.all(10),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.cyanAccent,
                            ),
                            onPressed: () {
                              Provider.of<CalculatorProvider>(context,
                                      listen: false)
                                  .calculate('+');
                            },
                            child: Text('+',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.indigo))),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.all(10),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.indigo,
                            ),
                            onPressed: () {
                              Provider.of<CalculatorProvider>(context,
                                      listen: false)
                                  .number_pressed(4);
                            },
                            child: Text('4',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white))),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.all(10),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.indigo,
                            ),
                            onPressed: () {
                              Provider.of<CalculatorProvider>(context,
                                      listen: false)
                                  .number_pressed(5);
                            },
                            child: Text('5',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white))),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.all(10),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.indigo,
                            ),
                            onPressed: () {
                              Provider.of<CalculatorProvider>(context,
                                      listen: false)
                                  .number_pressed(6);
                            },
                            child: Text('6',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white))),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.all(10),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.cyanAccent,
                            ),
                            onPressed: () {
                              Provider.of<CalculatorProvider>(context,
                                      listen: false)
                                  .calculate('-');
                            },
                            child: Text('-',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.indigo))),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.all(10),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.indigo,
                            ),
                            onPressed: () {
                              Provider.of<CalculatorProvider>(context,
                                      listen: false)
                                  .number_pressed(1);
                            },
                            child: Text('1',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white))),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.all(10),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.indigo,
                            ),
                            onPressed: () {
                              Provider.of<CalculatorProvider>(context,
                                      listen: false)
                                  .number_pressed(2);
                            },
                            child: Text('2',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white))),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.all(10),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.indigo,
                            ),
                            onPressed: () {
                              Provider.of<CalculatorProvider>(context,
                                      listen: false)
                                  .number_pressed(3);
                            },
                            child: Text('3',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white))),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.all(10),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.cyanAccent,
                            ),
                            onPressed: () {
                              Provider.of<CalculatorProvider>(context,
                                      listen: false)
                                  .calculate('x');
                            },
                            child: Text('x',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.indigo))),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.all(10),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.indigo,
                            ),
                            onPressed: () {
                              Provider.of<CalculatorProvider>(context,
                                      listen: false)
                                  .number_pressed(0);
                            },
                            child: Text('0',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white))),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.all(10),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.indigo,
                            ),
                            onPressed: () {
                              Provider.of<CalculatorProvider>(context,
                                      listen: false)
                                  .number_pressed('AC');
                            },
                            child: Text('AC',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white))),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.all(10),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.cyanAccent,
                            ),
                            onPressed: () {
                              Provider.of<CalculatorProvider>(context,
                                      listen: false)
                                  .calculate('DEL');
                            },
                            child: Text('DEL',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.indigo))),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.all(10),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.cyanAccent,
                            ),
                            onPressed: () {
                              Provider.of<CalculatorProvider>(context,
                                      listen: false)
                                  .calculate('/');
                            },
                            child: Text('/',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.indigo))),
                      )
                    ],
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(10),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.cyanAccent,
                        ),
                        onPressed: () {
                          Provider.of<CalculatorProvider>(context,
                                  listen: false)
                              .calculate('=');
                        },
                        child: Text('=',
                            style:
                                TextStyle(fontSize: 40, color: Colors.indigo))),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
