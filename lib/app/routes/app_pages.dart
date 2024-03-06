import 'package:get/get.dart';

import '../ui/Home/home.dart';
import '../ui/M-Pesa Account/m_pesa_account.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.homePage;

  static final routes = [
    GetPage(
      name: _Paths.homePage,
      page: () => const HomePage(),
    ),
    GetPage(
      name: _Paths.mPesaAccountPage,
      page: () => const MPesaAccountPage(),
    ),
  ];
}
