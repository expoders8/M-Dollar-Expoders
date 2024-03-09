import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../config/constant/color_constant.dart';
import '../../../config/constant/font_constant.dart';
import '../../routes/app_pages.dart';

class AccountAddedCompletPage extends StatefulWidget {
  const AccountAddedCompletPage({super.key});

  @override
  State<AccountAddedCompletPage> createState() =>
      _AccountAddedCompletPageState();
}

class _AccountAddedCompletPageState extends State<AccountAddedCompletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBackGround1Color,
        automaticallyImplyLeading: false,
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
          child: Column(
            children: [
              const SizedBox(height: 50),
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xFFF6F6F4),
                  border: Border.all(color: kWhiteColor),
                ),
                child: Image.asset(
                  "assets/icons/check.png",
                  scale: 1.8,
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                "Done",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 22,
                    fontFamily: kCircularStdBold),
              ),
              const SizedBox(height: 15),
              const Text(
                "Beneficiary account has \nbeen added",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 15,
                    fontFamily: kCircularStdMedium),
              ),
              const SizedBox(height: 150),
              const Text(
                "After 30 minutes you can \ninitiate the payment",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 14,
                    fontFamily: kCircularStdMedium),
              ),
              const SizedBox(height: 100),
              SizedBox(
                width: Get.width / 2,
                child: CupertinoButton(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(25),
                  child: const Text(
                    "Ok",
                    style: TextStyle(
                        color: kDividerColor,
                        fontSize: 15,
                        fontFamily: kCircularStdBold),
                  ),
                  onPressed: () {
                    Get.toNamed(Routes.transectionDetailsPage);
                  },
                ),
              )
            ],
          )),
    );
  }
}
