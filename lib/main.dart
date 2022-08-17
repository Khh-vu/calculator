import 'package:calculator/calc_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

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
  var question = '';
  var answer = '';

  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '+',
    '7',
    '8',
    '9',
    '-',
    '4',
    '5',
    '6',
    '*',
    '1',
    '2',
    '3',
    '/',
    '00',
    '0',
    '.',
    '=',
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

  void onEqualPress() {
    try {
      String finalQuestion = question.replaceAll('%', '/100');
      Expression expression = Parser().parse(finalQuestion);
      double finalAnswer =
          expression.evaluate(EvaluationType.REAL, ContextModel());
      answer = finalAnswer.toString();
    } catch (e) {
      answer = 'Syntax Error';
    }
  }

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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    question,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    answer,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.builder(
              itemCount: buttons.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (context, index) {
                if (index < 3) {
                  return CalcButton(
                    buttonTap: () {
                      setState(() {
                        switch (buttons[index]) {
                          case 'C':
                            question = '';
                            break;
                          case 'DEL':
                            if (question.isNotEmpty) {
                              question =
                                  question.substring(0, question.length - 1);
                            }
                            break;
                          case '%':
                            question += buttons[index];
                            break;
                        }
                      });
                    },
                    text: buttons[index],
                    textColor: Colors.black,
                    buttonColor: Colors.grey,
                  );
                } else {
                  return CalcButton(
                    buttonTap: () {
                      setState(() {
                        if (buttons[index] != '=') {
                          question += buttons[index];
                        } else {
                          onEqualPress();
                        }
                      });
                    },
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
