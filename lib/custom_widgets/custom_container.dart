import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({@required this.color, this.child, this.onPressed});

  final Color color;
  final Widget child;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        child: child,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: this.color),
      ),
    );
  }
}
