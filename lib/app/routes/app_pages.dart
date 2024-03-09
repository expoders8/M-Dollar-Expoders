import 'package:get/get.dart';

import '../ui/Beneficiary Information/account_added_complet.dart';
import '../ui/Beneficiary Information/transection_details.dart';
import '../ui/Home/home.dart';
import '../ui/widgets/country_widget.dart';
import '../ui/M-Pesa Account/m_pesa_account.dart';
import '../ui/InternationalTransfer/international_transfer.dart';
import '../ui/Beneficiary Information/beneficiary_information.dart';

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
    GetPage(
      name: _Paths.internationalTransferPage,
      page: () => const InternationalTransferPage(),
    ),
    GetPage(
      name: _Paths.countryWidget,
      page: () => const CountryWidget(),
    ),
    GetPage(
      name: _Paths.baneficiaryInformationPage,
      page: () => const BaneficiaryInformationPage(),
    ),
    GetPage(
      name: _Paths.accountAddedCompletPage,
      page: () => const AccountAddedCompletPage(),
    ),
    GetPage(
      name: _Paths.transectionDetailsPage,
      page: () => const TransectionDetailsPage(),
    ),
  ];
}
