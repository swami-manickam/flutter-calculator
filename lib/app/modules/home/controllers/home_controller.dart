import 'package:flutter/cupertino.dart';
import 'package:fluttercalculator/app/data/history_data.dart';
import 'package:fluttercalculator/app/utils/db_helper.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController inputController = TextEditingController();

  final dbHelper = DBHelper();

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

  String evaluateExpression(String expression) {
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

    // Convert the result to a string before returning
    String resultString = result.toString();

    addToHistory(expression, resultString);
    isCalculate = true;
    inputController.text = resultString;
    return resultString;
  }

  void addToHistory(String calData, String result) async {
    final id = DateTime.now().millisecondsSinceEpoch.toString();
    await dbHelper
        .insertData(HistoryData(time: id, calData: calData, result: result));
  }
}
