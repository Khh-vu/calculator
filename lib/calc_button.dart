import 'package:flutter/material.dart';

class CalcButton extends StatefulWidget {
  const CalcButton({
    Key? key,
    required this.text,
    required this.textColor,
    required this.buttonColor,
  }) : super(key: key);

  final String text;
  final Color? textColor;
  final Color? buttonColor;

  @override
  State<CalcButton> createState() => _CalcButtonState();
}

class _CalcButtonState extends State<CalcButton> {
  late Color? _textColor;
  late Color? _buttonColor;

  @override
  void initState() {
    _textColor = widget.textColor;
    _buttonColor = widget.buttonColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          final temp = _buttonColor;
          _buttonColor = _textColor;
          _textColor = temp;
        });
      },
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
        fixedSize: const Size.square(80),
      ).copyWith(
        backgroundColor: MaterialStateProperty.all<Color?>(_buttonColor),
      ),
      child: Text(
        widget.text,
        style: TextStyle(
          fontSize: 30,
          color: _textColor,
        ),
      ),
    );
  }
}
