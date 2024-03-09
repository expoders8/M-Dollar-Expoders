import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../routes/app_pages.dart';
import '../widgets/custom_textfield.dart';
import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';

class BaneficiaryInformationPage extends StatefulWidget {
  const BaneficiaryInformationPage({super.key});

  @override
  State<BaneficiaryInformationPage> createState() =>
      _BaneficiaryInformationPageState();
}

class _BaneficiaryInformationPageState
    extends State<BaneficiaryInformationPage> {
  bool isFormSubmitted = false;
  final TextEditingController accountNoController = TextEditingController();
  final TextEditingController bankCodeController = TextEditingController();
  final TextEditingController swiftCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBackGround1Color,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 8, 0, 8),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11), color: kWhiteColor),
              height: 20,
              width: 20,
              child: Image.asset(
                'assets/icons/arrow-left-outline.png',
                scale: 1.2,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [kAppBackGround1Color, kAppBackGround2Color],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.repeated),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Beneficiary",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 27,
                        fontFamily: kCircularStdBook),
                  ),
                  const Text(
                    "Information",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 27,
                        fontFamily: kCircularStdBold),
                  ),
                  const SizedBox(height: 25),
                  buildtitleWidget("Account number"),
                  const SizedBox(height: 5),
                  CustomTextFormField(
                    hintText: 'Enter Account Number',
                    maxLines: 1,
                    ctrl: accountNoController,
                    name: "accountno",
                    formSubmitted: isFormSubmitted,
                    validationMsg: 'Enter Account Number',
                  ),
                  const SizedBox(height: 15),
                  buildtitleWidget("Bank Code"),
                  const SizedBox(height: 5),
                  CustomTextFormField(
                    hintText: 'Enter Bank Code',
                    maxLines: 1,
                    ctrl: bankCodeController,
                    name: "bankcode",
                    // formSubmitted: isFormSubmitted,
                    // validationMsg: 'Bank Code is Required',
                  ),
                  const SizedBox(height: 15),
                  buildtitleWidget("Swift Code"),
                  const SizedBox(height: 5),
                  CustomTextFormField(
                    hintText: 'Enter Swift Code',
                    maxLines: 1,
                    ctrl: swiftCodeController,
                    name: "swiftcode",
                    formSubmitted: isFormSubmitted,
                    validationMsg: 'Enter Swift Code',
                  ),
                  const SizedBox(height: 100),
                  const Text(
                    "Kindly ensure all beneficiary information is valid to \navoid Transaction failure / rejection",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 13,
                        fontFamily: kCircularStdMedium),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: Get.width,
                    child: CupertinoButton(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Next",
                            style: TextStyle(
                                color: kDividerColor,
                                fontSize: 15,
                                fontFamily: kCircularStdBold),
                          ),
                          const SizedBox(width: 10),
                          Image.asset(
                            "assets/icons/arrow-right-outline.png",
                            color: kDividerColor,
                            scale: 1.4,
                          )
                        ],
                      ),
                      onPressed: () {
                        Get.toNamed(Routes.accountAddedCompletPage);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  buildtitleWidget(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 3.0, top: 5),
      child: Text(
        title,
        style: const TextStyle(
            color: kPrimaryColor, fontSize: 15, fontFamily: kCircularStdMedium),
      ),
    );
  }
}
