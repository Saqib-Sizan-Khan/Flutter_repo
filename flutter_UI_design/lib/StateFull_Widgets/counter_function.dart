import 'package:flutter/material.dart';

class Counter_Function extends StatefulWidget {
  const Counter_Function({Key? key}) : super(key: key);

  @override
  State<Counter_Function> createState() => _Counter_FunctionState();
}

class _Counter_FunctionState extends State<Counter_Function> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          count.toString(),
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count = count+1;
                  });
                },
                child: Text(
                  'Increment',
                  style: TextStyle(fontSize: 20),
                )),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count = count-1;
                  });
                },
                child: Text(
                  'Decrement',
                  style: TextStyle(fontSize: 20),
                ))
          ],
        )
      ],
    );
  }
}
