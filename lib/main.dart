import 'package:calculator/calc_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '+/-',
    '7',
    '8',
    '9',
    '+',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '*',
    '.',
    '0',
    '=',
    '/',
  ];

  bool isOperator(String operator) {
    if (operator == '+' ||
        operator == '-' ||
        operator == '*' ||
        operator == '/' ||
        operator == '=') {
      return true;
    }
    return false;
  }

  double text = 0;
  double num1 = 0;
  double num2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(child: Container()),
          Expanded(
            flex: 2,
            child: GridView.builder(
              itemCount: buttons.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (context, index) {
                if (index < 4) {
                  return CalcButton(
                    buttonTap: () {},
                    text: buttons[index],
                    textColor: Colors.black,
                    buttonColor: Colors.grey,
                  );
                } else {
                  return CalcButton(
                    buttonTap: () {},
                    text: buttons[index],
                    textColor: Colors.white,
                    buttonColor: isOperator(buttons[index])
                        ? Colors.amber[700]!
                        : Colors.grey[850]!,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
