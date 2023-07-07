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
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        title: const Text(
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
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Consumer<CalculatorProvider>(
                      builder: (context, value, child) => Text(
                        value.result,
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
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: GridView.builder(
                    itemCount: 17,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 15,
                            childAspectRatio: 1.2),
                    itemBuilder: (context, index) {
                      var num = Provider.of<CalculatorProvider>(context, listen: false).findValue(index);
                      return TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: (num == 'DEL' ||
                                    num == '+' ||
                                    num == '-' ||
                                    num == 'x' ||
                                    num == '/' ||
                                    num == '=')
                                ? Colors.cyanAccent
                                : Colors.indigo,
                          ),
                          onPressed: () {
                            if (num == 'DEL' ||
                                num == '+' ||
                                num == '-' ||
                                num == 'x' ||
                                num == '/' ||
                                num == '=') {
                              Provider.of<CalculatorProvider>(context,
                                      listen: false)
                                  .calculate(num);
                            } else {
                              Provider.of<CalculatorProvider>(context,
                                      listen: false)
                                  .number_pressed(num);
                            }
                          },
                          child: Text(num.toString(),
                              style: TextStyle(
                                fontSize: num == 'DEL' ? 30 : 40,
                                color: (num == 'DEL' ||
                                        num == '+' ||
                                        num == '-' ||
                                        num == 'x' ||
                                        num == '/' ||
                                        num == '=')
                                    ? Colors.indigo
                                    : Colors.white,
                              )));
                    }),
              )),
        ],
      ),
    );
  }
}
