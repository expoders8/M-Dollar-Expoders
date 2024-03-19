import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';
import '../Home/home.dart';

class SuccessPaymentPage extends StatefulWidget {
  const SuccessPaymentPage({
    super.key,
  });
  @override
  State<SuccessPaymentPage> createState() => _MoneySendPageState();
}

enum SampleItem { getHelp, sendFeedback }

class _MoneySendPageState extends State<SuccessPaymentPage> {
  final TextEditingController msgController = TextEditingController();
  SampleItem? selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBackGround1Color,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: PopupMenuButton<SampleItem>(
              position: PopupMenuPosition.under,
              color: kWhiteColor,
              icon: Image.asset(
                "assets/icons/vartical-dots.png",
                scale: 1.6,
              ),
              initialValue: selectedItem,
              onSelected: (SampleItem item) {
                setState(() {
                  selectedItem = item;
                });
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<SampleItem>>[
                PopupMenuItem<SampleItem>(
                  height: 35,
                  value: SampleItem.getHelp,
                  child: SizedBox(
                    width: 122,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/help.png",
                          scale: 1.2,
                        ),
                        const SizedBox(width: 10),
                        const Text('Get Help'),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem<SampleItem>(
                  height: 35,
                  value: SampleItem.sendFeedback,
                  child: SizedBox(
                    width: 122,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/feedback.png",
                          scale: 1.2,
                        ),
                        const SizedBox(width: 10),
                        const Text('Send feedback'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        leadingWidth: 45,
        leading: GestureDetector(
          onTap: () {
            Get.offAll(() => const HomePage());
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: GestureDetector(
              child: Image.asset(
                "assets/icons/cancel.png",
                scale: 1.6,
              ),
            ),
          ),
        ),
        toolbarHeight: 50,
      ),
      body: WillPopScope(
        onWillPop: () async {
          Get.offAll(() => const HomePage());
          return false;
        },
        child: Container(
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  child: Image.asset(
                    "assets/icons/t7.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  "Send money to",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 22,
                      fontFamily: kCircularStdNormal),
                ),
                const Text(
                  "Amelia",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 22,
                      fontFamily: kCircularStdBold),
                ),
                const Text(
                  "+1758574947574",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 13,
                      fontFamily: kCircularStdMedium),
                ),
                const SizedBox(height: 10),
                const Text(
                  "\$1599",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 45,
                      fontFamily: kCircularStdMedium),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: kWhiteColor),
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/paymentSuccses.png",
                        scale: 2,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "Completed",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 14,
                            fontFamily: kCircularStdMedium),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  "Paid by 23rd Mar 2024",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 14,
                      fontFamily: kCircularStdMedium),
                ),
                const SizedBox(height: 10),
                DottedBorder(
                  strokeWidth: 0.65,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(20),
                  color: kPrimaryColor,
                  padding: EdgeInsets.zero,
                  child: const SizedBox(
                    width: 250,
                    height: 200,
                    child: Padding(
                      padding: EdgeInsets.only(left: 21.0, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "64875676884",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 17,
                                fontFamily: kCircularStdMedium),
                          ),
                          Text(
                            "Transaction ID",
                            style: TextStyle(
                                color: kTextSecondaryColor,
                                fontSize: 14,
                                fontFamily: kCircularStdMedium),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "To : Hannah John",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 17,
                                fontFamily: kCircularStdMedium),
                          ),
                          Text(
                            "Pin +1758574947574",
                            style: TextStyle(
                                color: kTextSecondaryColor,
                                fontSize: 14,
                                fontFamily: kCircularStdMedium),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "From : Amelia",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 17,
                                fontFamily: kCircularStdMedium),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Pin +1874548364639",
                            style: TextStyle(
                                color: kTextSecondaryColor,
                                fontSize: 14,
                                fontFamily: kCircularStdMedium),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: kWhiteColor, width: 0.9)),
                        padding: const EdgeInsets.all(15),
                        child: Image.asset(
                          "assets/icons/share.png",
                          // scale: 1.5,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: Get.width - 190,
                          height: 50,
                          decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(25)),
                          child: const Center(
                            child: Text(
                              "Save Receipt",
                              style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: 15,
                                  fontFamily: kCircularStdMedium),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: kWhiteColor, width: 0.9)),
                        padding: const EdgeInsets.all(15),
                        child: Image.asset(
                          "assets/icons/whatsapp.png",
                          // scale: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
