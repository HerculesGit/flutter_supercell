import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.only(left: 0, right: 20),
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              color: Colors.blue[700],
            ),
            padding: EdgeInsets.all(5),
            child: Icon(
              Icons.keyboard_arrow_down,
              size: 25,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            "SEE LATEST",
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
