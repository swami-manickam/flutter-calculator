import 'package:fluttercalculator/app/modules/home/bindings/history_binding.dart';
import 'package:fluttercalculator/app/modules/home/views/history_view.dart';
import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/splash_view.dart';

class Routes {
  static const SPLASH = '/splash';
  static const HOME = '/home';
  static List<GetPage> get pages => [
        GetPage(name: SPLASH, page: () => SplashView()),
        GetPage(
          name: HOME,
          page: () => const HomeView(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: '/history',
          page: () => HistoryView(),
          binding: HistoryBinding(),
        ),
        // Add more routes as needed
      ];
}
