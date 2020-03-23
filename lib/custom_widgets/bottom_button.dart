import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({@required this.label, @required this.route});

  final String label;
  final Widget route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => route,
          ),
        );
      },
      child: Container(
        color: kAccentColor,
        margin: EdgeInsets.only(top: 15.0),
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 15.0),
        child: Center(
          child: Text(
            this.label,
            style: kBottomButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
