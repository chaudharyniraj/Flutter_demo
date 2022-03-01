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
  var result = 0.0;

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
                  firstInputNumber(),
                  maintainSpace(),
                  const Text('Select an operator'),
                  selectOperatorFunction(),
                  showSelectedOperator(),
                  maintainSpace(),
                  secondInputNumber(),
                  maintainSpace(),
                  submitButton(),
                  maintainSpace(),
                  showResult()
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: clearButton());
  }

  Widget firstInputNumber() {
    return TextField(
      textAlign: TextAlign.center,
      decoration: const InputDecoration(
        hintText: 'Enter First Number',
        labelText: 'Number 1',
      ),
      onChanged: (value) {
        firstNumber = double.parse(value);
        // print(firstNumber);
      },
      keyboardType: TextInputType.number,
    );
  }

  Widget secondInputNumber() {
    return TextField(
      textAlign: TextAlign.center,
      decoration: const InputDecoration(
        hintText: 'Enter Second Number',
        labelText: 'Number 2',
      ),
      onChanged: (value) {
        secondNumber = double.parse(value);
      },
      keyboardType: TextInputType.number,
    );
  }

  Widget maintainSpace() {
    return const SizedBox(
      height: 20,
    );
  }

  Widget selectOperatorFunction() {
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

  Widget submitButton() {
    return TextButton(
        onPressed: () {
          setState(() {
            result = result;
          });
          result = Logic().calculation(firstNumber, secondNumber, operator);
        },
        autofocus: true,
        child: const Text(
          'submit',
          style: TextStyle(fontSize: 20, color: Colors.green),
        ));
  }

  Widget showSelectedOperator() {
    return Text(
      operator,
      style: const TextStyle(fontSize: 40, color: Colors.black),
    );
  }

  Widget clearButton() {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).pop();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Calculation()),
        );
      },
      child: const Text('clear'),
    );
  }

  Widget showResult() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Answer: ',
          style: TextStyle(fontSize: 20, color: Colors.amber),
        ),
        Text(
          '$result',
          style: const TextStyle(fontSize: 20, color: Colors.blue),
        )
      ],
    );
  }
}
