import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/counter/counter_provider.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterProvider>(
      create: (context) => CounterProvider(),
      child: const CounterUI(),
    );
  }
}

class CounterUI extends StatelessWidget {
  const CounterUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Provider App'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
          child: Consumer<CounterProvider>(
        builder: (context, value, child) => Text(
          '${value.counter}',
          style: TextStyle(fontSize: 40),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CounterProvider>(context, listen: false).increse();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
