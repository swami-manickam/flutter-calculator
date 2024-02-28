import 'dart:async';
import 'package:fluttercalculator/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttercalculator/app/routes/routes.dart';

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
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Image.asset(
                      'assets/images/ic_calc_banner.jpg',
                    height: 300,
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                '',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                height: 100,
              ),
            ]),
      ),
    );
  }
}