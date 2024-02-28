import 'package:get/get.dart';
import 'dart:async';
import 'package:fluttercalculator/app/routes/routes.dart';

class SplashController extends GetxController {

  late Timer _timer;

  @override
  void onInit() {
    super.onInit();
    _timer = Timer(Duration(seconds: 3), () {
      Get.offNamed('/home');
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }

}