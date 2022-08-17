import 'package:flutter/material.dart';

class CalcButton extends StatefulWidget {
  const CalcButton({
    Key? key,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    required this.buttonTap,
  }) : super(key: key);

  final String text;
  final Color textColor;
  final Color buttonColor;
  final VoidCallback buttonTap;

  @override
  State<CalcButton> createState() => _CalcButtonState();
}

class _CalcButtonState extends State<CalcButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: widget.buttonTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: widget.buttonColor,
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                color: widget.textColor,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
