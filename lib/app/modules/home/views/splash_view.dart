import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttercalculator/app/routes/routes.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  static const bgColor = Color.fromRGBO(40, 150, 220, 1);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(Routes.HOME);
    });

    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
              child: Image.asset(
            'assets/images/ic_calc_banner.jpg',
            height: 300,
          )),
          const SizedBox(
            height: 10,
          ),
          const Text(
            '',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(
            height: 100,
          ),
        ]),
      ),
    );
  }
}
