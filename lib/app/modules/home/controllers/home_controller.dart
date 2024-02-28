import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  TextEditingController inputController = TextEditingController();
  // TextEditingController answerController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  bool isCalculate = false;

  double evaluateExpression(String expression) {
    List<String> operators = ['+', '-', '*', '/'];

    // Remove any whitespace from the expression
    expression = expression.replaceAll(' ', '');

    // Split the expression into numbers and operators
    List<String> numbers = [];
    String currentNumber = '';

    for (int i = 0; i < expression.length; i++) {
      String char = expression[i];

      if (operators.contains(char)) {
        numbers.add(currentNumber);
        numbers.add(char);
        currentNumber = '';
      } else {
        currentNumber += char;
      }
    }
    numbers.add(currentNumber);

    // Perform the calculations
    double result = double.parse(numbers[0]);

    for (int i = 1; i < numbers.length; i += 2) {
      String operator = numbers[i];
      double operand = double.parse(numbers[i + 1]);

      switch (operator) {
        case '+':
          result += operand;
          break;
        case '-':
          result -= operand;
          break;
        case '*':
          result *= operand;
          break;
        case '/':
          result /= operand;
          break;
      }
    }
    isCalculate = true;
    inputController.text = result.toString();
    return result;
  }

}