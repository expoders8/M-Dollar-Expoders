import 'package:get/get.dart';

import '../ui/Beneficiary Information/account_added_complet.dart';
import '../ui/Beneficiary Information/additional_transection_details.dart';
import '../ui/Beneficiary Information/pay_charges.dart';
import '../ui/Beneficiary Information/purpose_transection.dart';
import '../ui/Beneficiary Information/transection_details.dart';
import '../ui/Beneficiary Information/transfer_code.dart';
import '../ui/Home/home.dart';
import '../ui/QRCodeScanner/qr_code_scanner.dart';
import '../ui/widgets/country_widget.dart';
import '../ui/MoneySend & Transfer/money_send_transfer.dart';
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
      name: _Paths.moneySendAndTransferPage,
      page: () => const MoneySendAndTransferPage(),
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
    GetPage(
      name: _Paths.additionalTransectionDetailsPage,
      page: () => const AdditionalTransectionDetailsPage(),
    ),
    GetPage(
      name: _Paths.purposeTransectionPage,
      page: () => const PurposeTransectionPage(),
    ),
    GetPage(
      name: _Paths.transferCodePage,
      page: () => const TransferCodePage(),
    ),
    GetPage(
      name: _Paths.payChargesPage,
      page: () => const PayChargesPage(),
    ),
    GetPage(
      name: _Paths.qRCodeScannerPage,
      page: () => const QRCodeScannerPage(),
    ),
  ];
}
