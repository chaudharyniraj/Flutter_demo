import 'package:calculator_demo_app/Calclulation/Logic/ArithematicCalculation.dart';
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
  // bool checkTextField = true;
  var result = 0.0;
  var arithematicCalculation;
  // var textController;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    arithematicCalculation = ArithematicCalculation();
    // textController = TextEditingController();
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
  }

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
                  designFirstInputNumber(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Select an operator'),
                  designChooseOperator(),
                  designViewSelectedOperator(),
                  const SizedBox(
                    height: 20,
                  ),
                  designSecondInputNumber(),
                  const SizedBox(
                    height: 20,
                  ),
                  designSubmitButton(),
                  const SizedBox(
                    height: 20,
                  ),
                  designViewResult()
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: designClearButton());
  }

  Widget designFirstInputNumber() {
    return TextField(
      textAlign: TextAlign.center,
      controller: TextEditingController(text: firstNumber.toString()),
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

  Widget designSecondInputNumber() {
    return TextField(
      textAlign: TextAlign.center,
      controller: TextEditingController(text: secondNumber.toString()),
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

  Widget designChooseOperator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TextButton(
            onPressed: () {
              setState(() {
                operator = '+';
              });
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

  Widget designSubmitButton() {
    return MaterialButton(
        color: Colors.green,
        textColor: Colors.white,
        onPressed: () {
          setState(() {
            result = arithematicCalculation.calculate(
                firstNumber, secondNumber, operator);
            operator = arithematicCalculation.checkOperator(operator);
          });
        },
        child: const Text(
          'submit',
          style: TextStyle(
            fontSize: 20,
          ),
        ));
  }

  Widget designViewSelectedOperator() {
    return Text(
      operator,
      style: const TextStyle(fontSize: 30, color: Colors.black),
    );
  }

  Widget designClearButton() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          // checkTextField = false;
          firstNumber = 0.0;
          secondNumber = 0.0;
          operator = "";
          result = 0.0;
        });
      },
      child: const Text('clear'),
    );
  }

  Widget designViewResult() {
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
