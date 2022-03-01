class Logic {
  double calculation(firstNumber, secondNumber, operator) {
    double result = 0.0;
    if (operator == '+') {
      result = firstNumber + secondNumber;
      // return result;
    } else if (operator == '-') {
      result = firstNumber - secondNumber;
      // return result;
    } else if (operator == '*') {
      result = firstNumber * secondNumber;
      // return result;
    } else if (operator == '/') {
      result = firstNumber / secondNumber;
      // return result;
    }
    return result;
  }
}
