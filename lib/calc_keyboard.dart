import 'package:calculator/calc_button.dart';
import 'package:flutter/material.dart';

class CalcKeyBoard extends StatelessWidget {
  const CalcKeyBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
