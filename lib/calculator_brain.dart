class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi = 0;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / ((height / 100) * (height / 100));
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
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower body than normal body weight. You can eat a bit more.';
    }
  }

  String getGenderSpecificAdvice(String gender) {
    if (gender == 'Male') {
      if (_bmi >= 25) {
        return 'Men with higher BMI may have increased risk for heart disease. Consider adding cardio to your routine.';
      } else if (_bmi > 18.5) {
        return 'Your BMI is in the healthy range for men. Keep up with regular exercise!';
      } else {
        return 'Men with lower BMI may need to focus on strength training and protein intake.';
      }
    } else if (gender == 'Female') {
      if (_bmi >= 25) {
        return 'Women with higher BMI may have higher risk for certain health conditions. Consider balanced diet changes.';
      } else if (_bmi > 18.5) {
        return 'Your BMI is in the healthy range for women. Maintain a balance of cardio and strength training.';
      } else {
        return 'Women with lower BMI should ensure adequate nutrition, especially calcium and iron intake.';
      }
    } else {
      return 'Consider consulting with a healthcare professional for personalized health advice.';
    }
  }
}
