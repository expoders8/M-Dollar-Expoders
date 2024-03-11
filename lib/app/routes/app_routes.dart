part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const homePage = _Paths.homePage;
  static const payChargesPage = _Paths.payChargesPage;
  static const countryWidget = _Paths.countryWidget;
  static const moneySendAndTransferPage = _Paths.moneySendAndTransferPage;
  static const transferCodePage = _Paths.transferCodePage;
  static const purposeTransectionPage = _Paths.purposeTransectionPage;
  static const transectionDetailsPage = _Paths.transectionDetailsPage;
  static const accountAddedCompletPage = _Paths.accountAddedCompletPage;
  static const baneficiaryInformationPage = _Paths.baneficiaryInformationPage;
  static const qRCodeScannerPage = _Paths.qRCodeScannerPage;
  static const internationalTransferPage = _Paths.internationalTransferPage;
  static const additionalTransectionDetailsPage =
      _Paths.additionalTransectionDetailsPage;
}

abstract class _Paths {
  static const homePage = '/homePage';
  static const payChargesPage = '/payChargesPage';
  static const countryWidget = '/countryWidget';
  static const transferCodePage = '/transferCodePage';
  static const moneySendAndTransferPage = '/moneySendAndTransferPage';
  static const purposeTransectionPage = '/purposeTransectionPage';
  static const transectionDetailsPage = '/transectionDetailsPage';
  static const qRCodeScannerPage = '/qRCodeScannerPage';
  static const accountAddedCompletPage = '/accountAddedCompletPage';
  static const baneficiaryInformationPage = '/baneficiaryInformationPage';
  static const internationalTransferPage = '/internationalTransferPage';
  static const additionalTransectionDetailsPage =
      '/additionalTransectionDetailsPage';
}
