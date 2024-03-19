part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const homePage = _Paths.homePage;
  static const loginPage = _Paths.loginPage;
  static const profilePage = _Paths.profilePage;
  static const countryWidget = _Paths.countryWidget;
  static const payChargesPage = _Paths.payChargesPage;
  static const selectBankPage = _Paths.selectBankPage;
  static const addPaymentPage = _Paths.addPaymentPage;
  static const transferCodePage = _Paths.transferCodePage;
  static const paymentSuccsesGif = _Paths.paymentSuccsesGif;
  static const qRCodeScannerPage = _Paths.qRCodeScannerPage;
  static const transectionDetailsPage = _Paths.transectionDetailsPage;
  static const purposeTransectionPage = _Paths.purposeTransectionPage;
  static const accountAddedCompletPage = _Paths.accountAddedCompletPage;
  static const moneySendAndTransferPage = _Paths.moneySendAndTransferPage;
  static const internationalTransferPage = _Paths.internationalTransferPage;
  static const baneficiaryInformationPage = _Paths.baneficiaryInformationPage;
  static const additionalTransectionDetailsPage =
      _Paths.additionalTransectionDetailsPage;
}

abstract class _Paths {
  static const homePage = '/homePage';
  static const loginPage = '/loginPage';
  static const profilePage = '/profilePage';
  static const countryWidget = '/countryWidget';
  static const payChargesPage = '/payChargesPage';
  static const selectBankPage = '/selectBankPage';
  static const addPaymentPage = '/addPaymentPage';
  static const transferCodePage = '/transferCodePage';
  static const paymentSuccsesGif = '/paymentSuccsesGif';
  static const qRCodeScannerPage = '/qRCodeScannerPage';
  static const purposeTransectionPage = '/purposeTransectionPage';
  static const transectionDetailsPage = '/transectionDetailsPage';
  static const accountAddedCompletPage = '/accountAddedCompletPage';
  static const moneySendAndTransferPage = '/moneySendAndTransferPage';
  static const internationalTransferPage = '/internationalTransferPage';
  static const baneficiaryInformationPage = '/baneficiaryInformationPage';
  static const additionalTransectionDetailsPage =
      '/additionalTransectionDetailsPage';
}
