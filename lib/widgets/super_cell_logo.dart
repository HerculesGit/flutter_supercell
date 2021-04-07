import 'package:flutter/material.dart';

class SuperCellLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/supercell_logo.jpg',
      height: 40,
      fit: BoxFit.cover,
    );
  }
}
