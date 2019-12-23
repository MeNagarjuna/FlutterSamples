import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.0) {
      return 'NORMAL';
    } else {
      return 'UNDER WEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You Have higher then normal body weight, try to excrise more';
    } else if (_bmi > 18.0) {
      return 'You have normal body weight!';
    } else {
      return 'You have lower then normal body weight, you can eat a bit more';
    }
  }
}
