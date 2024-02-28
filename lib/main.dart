import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:fluttercalculator/app/modules/home/views/splash_view.dart';
import 'app/routes/routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: Routes.SPLASH,
      getPages: Routes.pages,
    ),
  );
}
