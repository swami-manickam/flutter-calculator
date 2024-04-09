import 'package:flutter/material.dart';
import 'package:fluttercalculator/app/data/global_widget.dart';
import 'package:fluttercalculator/app/utils/db_helper.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DBHelper _db = DBHelper();
    return Scaffold(
      backgroundColor: bgColor,
      appBar: appbar(
        context,
        'Calculator App',
        Icons.history,
        () {
          Navigator.pushNamed(context, '/history');
        },
        bgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 4,
            ),
            const Spacer(),
            TextFormField(
              readOnly: true,
              controller: controller.inputController,
              style: const TextStyle(fontSize: 32, color: Colors.white),
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
              textAlign: TextAlign.end,
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                numberBox(
                    number: 1,
                    onPressed: () {
                      if (controller.isCalculate == true) {
                        controller.inputController.text = "";
                        controller.isCalculate = false;
                      }
                      if (controller.inputController.text == "0") {
                        controller.inputController.text = "1";
                      } else {
                        controller.inputController.text =
                            "${controller.inputController.text}1";
                      }
                    }),
                numberBox(
                    number: 2,
                    onPressed: () {
                      if (controller.isCalculate == true) {
                        controller.inputController.text = "";
                        controller.isCalculate = false;
                      }
                      if (controller.inputController.text == "0") {
                        controller.inputController.text = "2";
                      } else {
                        controller.inputController.text =
                            "${controller.inputController.text}2";
                      }
                    }),
                numberBox(
                    number: 3,
                    onPressed: () {
                      if (controller.isCalculate == true) {
                        controller.inputController.text = "";
                        controller.isCalculate = false;
                      }
                      if (controller.inputController.text == "0") {
                        controller.inputController.text = "3";
                      } else {
                        controller.inputController.text =
                            "${controller.inputController.text}3";
                      }
                    }),
                operationBox(
                    text: "+",
                    onPressed: () {
                      if (controller.inputController.text != "") {
                        controller.inputController.text =
                            "${controller.inputController.text}+";
                      }
                    }),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                numberBox(
                    number: 4,
                    onPressed: () {
                      if (controller.isCalculate == true) {
                        controller.inputController.text = "";
                        controller.isCalculate = false;
                      }
                      if (controller.inputController.text == "0") {
                        controller.inputController.text = "4";
                      } else {
                        controller.inputController.text =
                            "${controller.inputController.text}4";
                      }
                    }),
                numberBox(
                    number: 5,
                    onPressed: () {
                      if (controller.isCalculate == true) {
                        controller.inputController.text = "";
                        controller.isCalculate = false;
                      }
                      if (controller.inputController.text == "0") {
                        controller.inputController.text = "5";
                      } else {
                        controller.inputController.text =
                            "${controller.inputController.text}5";
                      }
                    }),
                numberBox(
                    number: 6,
                    onPressed: () {
                      if (controller.isCalculate == true) {
                        controller.inputController.text = "";
                        controller.isCalculate = false;
                      }
                      if (controller.inputController.text == "0") {
                        controller.inputController.text = "6";
                      } else {
                        controller.inputController.text =
                            "${controller.inputController.text}6";
                      }
                    }),
                operationBox(
                    text: "-",
                    onPressed: () {
                      if (controller.inputController.text != "") {
                        controller.inputController.text =
                            "${controller.inputController.text}-";
                      }
                    }),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                numberBox(
                    number: 7,
                    onPressed: () {
                      if (controller.isCalculate == true) {
                        controller.inputController.text = "";
                        controller.isCalculate = false;
                      }
                      if (controller.inputController.text == "0") {
                        controller.inputController.text = "7";
                      } else {
                        controller.inputController.text =
                            "${controller.inputController.text}7";
                      }
                    }),
                numberBox(
                    number: 8,
                    onPressed: () {
                      if (controller.isCalculate == true) {
                        controller.inputController.text = "";
                        controller.isCalculate = false;
                      }
                      if (controller.inputController.text == "0") {
                        controller.inputController.text = "8";
                      } else {
                        controller.inputController.text =
                            "${controller.inputController.text}8";
                      }
                    }),
                numberBox(
                    number: 9,
                    onPressed: () {
                      if (controller.isCalculate == true) {
                        controller.inputController.text = "";
                        controller.isCalculate = false;
                      }
                      if (controller.inputController.text == "0") {
                        controller.inputController.text = "9";
                      } else {
                        controller.inputController.text =
                            "${controller.inputController.text}9";
                      }
                    }),
                operationBox(
                    text: "/",
                    onPressed: () {
                      if (controller.inputController.text != "") {
                        controller.inputController.text =
                            "${controller.inputController.text}/";
                      }
                    }),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                numberBox(
                    number: 0,
                    onPressed: () {
                      if (controller.isCalculate == true) {
                        controller.inputController.text = "";
                        controller.isCalculate = false;
                      }
                      if (controller.inputController.text == "" ||
                          controller.inputController.text == "0") {
                        controller.inputController.text = "0";
                      } else {
                        controller.inputController.text =
                            "${controller.inputController.text}0";
                      }
                    }),
                operationBox(
                    text: "C",
                    onLongPress: () {
                      controller.inputController.text = "";
                      // controller.answerController.text = "";
                    },
                    onPressed: () {
                      controller.inputController.text =
                          controller.inputController.text.replaceRange(
                              controller.inputController.text.length - 1,
                              null,
                              "");
                    }),
                operationBox(
                    text: "*",
                    onPressed: () {
                      if (controller.inputController.text != "") {
                        controller.inputController.text =
                            "${controller.inputController.text}*";
                      }
                    }),
                operationBox(
                    text: "=",
                    onPressed: () {
                      if (controller.inputController.text != "" ||
                          controller.inputController.text != "0") {
                        var resultData = controller.evaluateExpression(
                            controller.inputController.text);
                        /*controller.addToHistory(
                            controller.inputController.text, resultData);*/
                      }
                    }),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
