part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const homePage = _Paths.homePage;
  static const mPesaAccountPage = _Paths.mPesaAccountPage;
}

abstract class _Paths {
  static const homePage = '/homePage';
  static const mPesaAccountPage = '/mPesaAccountPage';
}
