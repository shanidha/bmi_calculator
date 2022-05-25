import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  double? _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25)
      return 'OverWeight';
    else if (_bmi! > 18.5)
      return 'Normal';
    else
      return 'UnderWeight';
  }

  String getInterpretation() {
    if (_bmi! >= 25)
      return 'you have a higher than normal body weight,try to excercise more!';
    else if (_bmi! > 18.5)
      return 'you have a Normal body weight.Good job!';
    else
      return 'you have a lower than normalbody weight,you can eat a bit more.';
  }
}
