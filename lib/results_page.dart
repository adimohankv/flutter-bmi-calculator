import 'package:bmi_calculator/bmiCalculator.dart';
import 'package:flutter/material.dart';

import './custom_widgets/custom_container.dart';
import './custom_widgets/bottom_button.dart';
import './input_page.dart';
import './constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiCalculator}) {
    bmiCalculator.calculateBMI();
  }

  final CalculateBMI bmiCalculator;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(15.0),
            child: Text(
              'YOUR RESULTS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
          ),
          Expanded(
            child: CustomContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiCalculator.getResult(),
                    style: TextStyle(
                        color: Color(0XFF22e37a),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    bmiCalculator.calculateBMI(),
                    style:
                        TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    bmiCalculator.getInterpretation(),
                    style: TextStyle(fontSize: 18.0),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              color: kInActiveContainerColor,
            ),
          ),
          BottomButton(
            label: 'RE-CALCULATE',
            route: InputPage(),
          )
        ],
      ),
    );
  }
}
