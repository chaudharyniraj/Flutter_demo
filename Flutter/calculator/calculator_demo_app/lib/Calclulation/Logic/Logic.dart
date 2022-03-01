class Logic {
  double calculation(firstNumber, secondNumber, operator) {
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
}
