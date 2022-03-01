import 'package:calculator_demo_app/Calclulation/Logic/Logic.dart';
import 'package:flutter/material.dart';

class Calculation extends StatefulWidget {
  const Calculation({Key? key}) : super(key: key);

  @override
  _CalculationState createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  double firstNumber = 0.0;
  double secondNumber = 0.0;
  String operator = "";
  var result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator Demo'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'Enter First Number',
                    labelText: 'Number 1',
                  ),
                  onChanged: (value) {
                    firstNumber = double.parse(value);
                    // print(firstNumber);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Select an operator'),
                operatorFunction(),
                Text(
                  '$operator',
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'Enter Second Number',
                    labelText: 'Number 2',
                  ),
                  onChanged: (value) {
                    secondNumber = double.parse(value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        result = result;
                      });
                      result = Logic()
                          .calculation(firstNumber, secondNumber, operator);
                    },
                    child: const Text(
                      'submit',
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    )),
                Text(
                  '$result',
                  style: const TextStyle(fontSize: 20, color: Colors.blue),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Calculation()),
          );
        },
        child: Text('clear'),
      ),
    );
  }

  Widget operatorFunction() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TextButton(
            onPressed: () {
              setState(() {
                operator = '+';
              });
              // result = Logic().calculation(firstNumber, secondNumber, operator);
            },
            child: const Text(
              '+',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            )),
        TextButton(
            onPressed: () {
              setState(() {
                operator = '-';
              });
              // result = Logic().calculation(firstNumber, secondNumber, operator);
            },
            child: const Text(
              '-',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
            )),
        TextButton(
            onPressed: () {
              setState(() {
                operator = '*';
              });
              // result = Logic().calculation(firstNumber, secondNumber, operator);
            },
            child: const Text(
              '*',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            )),
        TextButton(
            onPressed: () {
              setState(() {
                operator = '/';
              });
            },
            child: const Text(
              '/',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )),
      ],
    );
  }
}
