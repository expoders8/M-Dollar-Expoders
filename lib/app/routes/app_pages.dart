import 'package:get/get.dart';
import '../../config/provider/payment_succses.dart';
import '../ui/Auth/sign_in.dart';
import '../ui/Home/home.dart';
import '../ui/Profile/profile.dart';
import '../ui/AddPayment/add_payment.dart';
import '../ui/SelectBank/select_back.dart';
import '../ui/widgets/country_widget.dart';
import '../ui/QRCodeScanner/qr_code_scanner.dart';
import '../ui/Beneficiary Information/pay_charges.dart';
import '../ui/Beneficiary Information/transfer_code.dart';
import '../ui/MoneySend & Transfer/money_send_transfer.dart';
import '../ui/Beneficiary Information/purpose_transection.dart';
import '../ui/Beneficiary Information/transection_details.dart';
import '../ui/InternationalTransfer/international_transfer.dart';
import '../ui/Beneficiary Information/account_added_complet.dart';
import '../ui/Beneficiary Information/beneficiary_information.dart';
import '../ui/Beneficiary Information/additional_transection_details.dart';

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
    GetPage(
      name: _Paths.profilePage,
      page: () => const ProfilePage(),
    ),
    GetPage(
      name: _Paths.addPaymentPage,
      page: () => const AddPaymentPage(),
    ),
    GetPage(
      name: _Paths.selectBankPage,
      page: () => const SelectBankPage(),
    ),
    GetPage(
      name: _Paths.paymentSuccsesGif,
      page: () => const PaymentSuccsesGif(),
    ),
    GetPage(
      name: _Paths.loginPage,
      page: () => const LoginPage(),
    ),
  ];
}
