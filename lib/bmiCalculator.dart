import 'dart:math';

class CalculateBMI {
  CalculateBMI({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow((height / 100), 2);
    String result = _bmi.toStringAsFixed(2);

    return result;
  }

  String getResult() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi <= 18)
      return 'Underweight';
    else
      return 'Normal';
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return 'Your have a high body weight. HIT THE GYM!!';
    else if (_bmi <= 18)
      return 'Your have a low body weight. EAT MORE!!';
    else
      return 'Your have a normal body weight. Great Job!';
  }
}
