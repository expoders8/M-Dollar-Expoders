import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:mdollerapp/config/constant/font_constant.dart';

import '../widgets/custom_textfield.dart';
import '../../../config/constant/color_constant.dart';

class LoginPage extends StatefulWidget {
  final int? selectedTabIndex;
  const LoginPage({super.key, this.selectedTabIndex});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginFormKey = GlobalKey<FormState>();
  String fcmToken = "";
  TextEditingController organizationController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // FCMNotificationServices fCMNotificationServices = FCMNotificationServices();
  bool isFormSubmitted = false;

  @override
  void initState() {
    // fCMNotificationServices.requestNotificationPermission();
    // fCMNotificationServices.firebaseInit();

    // fCMNotificationServices.initLocalNotification();
    // fCMNotificationServices.getDeviceToken().then(
    //       (value) => {setState(() => fcmToken = value), print(fcmToken)},
    //     );
    super.initState();
  }

  // Future<void> _firebaseMessagingBackgroundHandler(
  //     RemoteMessage message) async {
  //   fCMNotificationServices.initLocalNotification(context, message);
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          height: Get.height,
          width: Get.width,
          padding: const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 0.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
                colors: [kAppBackGround1Color, kAppBackGround2Color],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                tileMode: TileMode.repeated),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _loginFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: SizedBox(
                height: Get.height,
                width: Get.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome To",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: kCircularStdMedium,
                            color: kPrimaryColor,
                          ),
                        ),
                        Text(
                          "M-Dollar",
                          style: TextStyle(
                              fontSize: 30.0,
                              color: kPrimaryColor,
                              fontFamily: kCircularStdBold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 200),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: size.width > 500 ? 600 : size.width,
                          child: CustomTextFormField(
                            hintText: 'Mobile No',
                            maxLines: 1,
                            ctrl: userNameController,
                            keyboardType: TextInputType.number,
                            name: "mobileno",
                            formSubmitted: isFormSubmitted,
                            validationMsg: 'MobileNo is Required',
                          ),
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        SizedBox(
                          width: size.width > 500 ? 600 : size.width - 55,
                          height: 50,
                          child: CupertinoButton(
                            borderRadius: BorderRadius.circular(25),
                            color: kPrimaryColor,
                            onPressed: () {},
                            child: const Text(
                              'Login',
                              style:
                                  TextStyle(color: kWhiteColor, fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // const SizedBox(height: 40),
                    Lottie.asset(
                      'assets/login.json',
                      width: 300,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // onLoginButtonPress() {
  //   setState(() {
  //     isFormSubmitted = true;
  //   });
  //   FocusScope.of(context).requestFocus(FocusNode());
  //   Future.delayed(const Duration(milliseconds: 100), () async {
  //     if (_loginFormKey.currentState!.validate()) {
  //       signInController.organizationId(organizationController.text);
  //       signInController.email(userNameController.text);
  //       signInController.password(passwordController.text);
  //       signInController.fcmToken(fcmToken);
  //       LoaderX.show(context, 60.0, 60.0);

  //       signInController.login();
  //     }
  //   });
  // }
}
