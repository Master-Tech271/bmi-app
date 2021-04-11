import 'dart:math';

class CalculatorBrain {
  final int weight;
  final int height;
  double _bmi;
  List<String> _interpretation = [
    'You have a higher than normal body weight. Try to exercise more.',
    'You have a normal body weight. Good Job!',
    'You have a lower than normal body weight. You can eat a bit more.'
  ];
  CalculatorBrain({this.weight, this.height});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2); // formulae => (weight/height meter^2)
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return _interpretation[0];
    } else if (_bmi > 18.5) {
      return _interpretation[1];
    } else {
      return _interpretation[2];
    }
  }
}
