import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final Function onPressed;

  PrimaryButton({
    Key? key,
    required this.backgroundColor,
    required this.text,
    required this.onPressed,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(
        primary: backgroundColor,
        elevation: 0,
        animationDuration: Duration(),
        // padding: EdgeInsets.only(left: 0, right: 20),
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(5.0),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 10,
        ),
      ),
    );
  }
}
