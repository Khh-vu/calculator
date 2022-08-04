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
  double text = 0;
  double num1 = 0;
  double num2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    text.toString(),
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 100,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const CalcButton(
                  text: 'AC',
                  textColor: Colors.black,
                  buttonColor: Colors.grey,
                ),
                const CalcButton(
                  text: '+/-',
                  textColor: Colors.black,
                  buttonColor: Colors.grey,
                ),
                const CalcButton(
                  text: '%',
                  textColor: Colors.black,
                  buttonColor: Colors.grey,
                ),
                CalcButton(
                  text: '/',
                  textColor: Colors.white,
                  buttonColor: Colors.amber[700]!,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: '7',
                  textColor: Colors.white,
                  buttonColor: Colors.grey[850],
                ),
                CalcButton(
                  text: '8',
                  textColor: Colors.white,
                  buttonColor: Colors.grey[850],
                ),
                CalcButton(
                  text: '9',
                  textColor: Colors.white,
                  buttonColor: Colors.grey[850],
                ),
                CalcButton(
                  text: '*',
                  textColor: Colors.white,
                  buttonColor: Colors.amber[700],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: '4',
                  textColor: Colors.white,
                  buttonColor: Colors.grey[850],
                ),
                CalcButton(
                  text: '5',
                  textColor: Colors.white,
                  buttonColor: Colors.grey[850],
                ),
                CalcButton(
                  text: '6',
                  textColor: Colors.white,
                  buttonColor: Colors.grey[850],
                ),
                CalcButton(
                  text: '-',
                  textColor: Colors.white,
                  buttonColor: Colors.amber[700],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: '1',
                  textColor: Colors.white,
                  buttonColor: Colors.grey[850],
                ),
                CalcButton(
                  text: '2',
                  textColor: Colors.white,
                  buttonColor: Colors.grey[850],
                ),
                CalcButton(
                  text: '3',
                  textColor: Colors.white,
                  buttonColor: Colors.grey[850],
                ),
                CalcButton(
                  text: '+',
                  textColor: Colors.white,
                  buttonColor: Colors.amber[700],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(20, 20, 150, 20),
                    shape: const StadiumBorder(),
                  ).copyWith(
                    backgroundColor:
                        MaterialStateProperty.all<Color?>(Colors.grey[850]),
                  ),
                  child: const Text(
                    '0',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                CalcButton(
                  text: ',',
                  textColor: Colors.white,
                  buttonColor: Colors.grey[850],
                ),
                CalcButton(
                  text: '=',
                  textColor: Colors.white,
                  buttonColor: Colors.amber[700],
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
