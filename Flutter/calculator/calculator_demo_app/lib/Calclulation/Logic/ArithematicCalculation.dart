class ArithematicCalculation {
  double calculate(firstNumber, secondNumber, operator) {
    double result = 0.0;
    if (operator == '+') {
      result = firstNumber + secondNumber;
    } else if (operator == '-') {
      result = firstNumber - secondNumber;
    } else if (operator == '*') {
      result = firstNumber * secondNumber;
    } else if (operator == '/') {
      result = firstNumber / secondNumber;
    }
    return result;
  }

  String checkOperator(operator) {
    if (operator == "") {
      operator = "please select the operator";
    }
    return operator;
  }
}
