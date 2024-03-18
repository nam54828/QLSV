import 'package:get/get.dart';
import 'package:template/presentation/pages/dash_board/dash_board_binding.dart';
import 'package:template/presentation/pages/dash_board/dash_board_page.dart';

import '../../../presentation/pages/introduction/introduction_binding.dart';
import '../../../presentation/pages/introduction/introduction_page.dart';
import '../../../presentation/pages/splash/splash_page.dart';

mixin AuthRouters {
  static const String SPLASH = '/splash';
  static const String INTRODUCTION = '/introduction';
  static const String DASH_BOARD = '/dash_board';
  static const String LOGIN = '/login';
  static const String REGISTER = '/register';
  static const String FORGOT_PASSWORD = '/forgot_password';
  static const String RESET_PASSWORD = '/reset_password';
  static const String OTP = '/otp';

  static List<GetPage> listPage = [
    GetPage(
      name: SPLASH,
      page: () => SplashPage(),
    ),
    GetPage(
      name: INTRODUCTION,
      page: () => IntroductionPage(),
      binding: IntroductionBinding(),
    ),
    GetPage(
      name: DASH_BOARD,
      page: () => DashBoardPage(),
      binding: DashBoardBinding(),
    ),
  ];
}
