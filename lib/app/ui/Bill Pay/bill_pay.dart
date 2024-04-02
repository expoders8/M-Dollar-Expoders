import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';
import '../UserPayment/money_send.dart';

class BillPayPage extends StatefulWidget {
  final String? tag;
  const BillPayPage({super.key, this.tag});

  @override
  State<BillPayPage> createState() => _BillPayPageState();
}

class _BillPayPageState extends State<BillPayPage> {
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Bill Pay",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 27,
                      fontFamily: kCircularStdBook),
                ),
                const Text(
                  "Payment categories",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 27,
                      fontFamily: kCircularStdBold),
                ),
                const SizedBox(height: 35),
                Row(
                  children: [
                    buildCardWidget(
                        "Mobile\nrecharge", "assets/icons/mobilerecharge.png"),
                    buildCardWidget(
                        "Electricity\n", "assets/icons/electrycity.png"),
                    buildCardWidget("DTH /\nCable TV", "assets/icons/dth.png")
                  ],
                ),
                Row(
                  children: [
                    buildCardWidget(
                        "FASTTag\nrechatge", "assets/icons/fasttag.png"),
                    buildCardWidget(
                        "Google\nPlay", "assets/icons/gooleplay.png"),
                    buildCardWidget(
                        "Credit\ncards", "assets/icons/creditcard.png")
                  ],
                ),
                Row(
                  children: [
                    buildCardWidget("Gas booking", "assets/icons/gas.png"),
                    buildCardWidget(
                        "Broadband \nLandline", "assets/icons/broadband.png"),
                    buildCardWidget(
                        "Postpaid \nmobile", "assets/icons/mobilerecharge.png")
                  ],
                ),
                SizedBox(height: 120),
                SizedBox(
                  width: Get.width,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text("View all",
                        style: TextStyle(color: kPrimaryColor)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildCardWidget(String title, String image) {
    return GestureDetector(
      onTap: () {
        Get.to(() => MoneySendPage());
      },
      child: SizedBox(
        height: 116,
        width: 110,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 5),
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: 35,
                  width: 35,
                ),
                const SizedBox(height: 5),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: kPrimaryColor,
                      fontFamily: kCircularStdNormal,
                      fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
