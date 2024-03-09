part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const homePage = _Paths.homePage;
  static const countryWidget = _Paths.countryWidget;
  static const mPesaAccountPage = _Paths.mPesaAccountPage;
  static const transectionDetailsPage = _Paths.transectionDetailsPage;
  static const accountAddedCompletPage = _Paths.accountAddedCompletPage;
  static const baneficiaryInformationPage = _Paths.baneficiaryInformationPage;
  static const internationalTransferPage = _Paths.internationalTransferPage;
}

abstract class _Paths {
  static const homePage = '/homePage';
  static const countryWidget = '/countryWidget';
  static const mPesaAccountPage = '/mPesaAccountPage';
  static const transectionDetailsPage = '/transectionDetailsPage';
  static const accountAddedCompletPage = '/accountAddedCompletPage';
  static const baneficiaryInformationPage = '/baneficiaryInformationPage';
  static const internationalTransferPage = '/internationalTransferPage';
}
