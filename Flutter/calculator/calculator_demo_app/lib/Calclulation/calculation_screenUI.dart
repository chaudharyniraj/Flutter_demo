import 'package:flutter/material.dart';

class Calculation extends StatefulWidget {
  const Calculation({Key? key}) : super(key: key);

  @override
  _CalculationState createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter First Number',
                  labelText: 'Number 1',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Select an operator'),
              operator(),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter Second Number',
                  labelText: 'Number 2',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'submit',
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  )),
              const Text('Answer')
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('Clear'),
      ),
    );
  }

  Widget operator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TextButton(
            onPressed: () {},
            child: const Text(
              '+',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            )),
        TextButton(
            onPressed: () {},
            child: const Text(
              '-',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
            )),
        TextButton(
            onPressed: () {},
            child: const Text(
              '*',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            )),
        TextButton(
            onPressed: () {},
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
