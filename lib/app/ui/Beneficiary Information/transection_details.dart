import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../routes/app_pages.dart';
import '../widgets/custom_textfield.dart';
import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';

class TransectionDetailsPage extends StatefulWidget {
  const TransectionDetailsPage({super.key});

  @override
  State<TransectionDetailsPage> createState() => _TransectionDetailsPageState();
}

class _TransectionDetailsPageState extends State<TransectionDetailsPage> {
  final TextEditingController amountController = TextEditingController();
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
                    "Transfer",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 27,
                        fontFamily: kCircularStdBook),
                  ),
                  const Text(
                    "Details",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 27,
                        fontFamily: kCircularStdBold),
                  ),
                  const SizedBox(height: 6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sender",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: Get.width > 500 ? 20 : 13,
                            fontFamily: kCircularStdMedium),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 3.0, bottom: 3),
                            child: Image.asset(
                              "assets/icons/varticalline.png",
                              height: 150,
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: kWhiteColor, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Center(child: Text("AP")),
                                    ),
                                    Positioned(
                                      bottom: -35,
                                      right: -28,
                                      child: Image.asset(
                                        "assets/icons/contry1.png",
                                        scale: 4.5,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 5),
                                    Text(
                                      "Aryaa Patel",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: Get.width > 500 ? 20 : 16,
                                          fontFamily: kCircularStdBold),
                                    ),
                                    Text(
                                      "ICICI Back of India",
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: Get.width > 500 ? 20 : 12,
                                          fontFamily: kCircularStdNormal),
                                    ),
                                    Text(
                                      "4564645645684",
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: Get.width > 500 ? 20 : 12,
                                          fontFamily: kCircularStdNormal),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Receiver",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: Get.width > 500 ? 20 : 13,
                            fontFamily: kCircularStdMedium),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 3.0, bottom: 3),
                            child: Image.asset(
                              "assets/icons/varticalline.png",
                              height: 150,
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: kWhiteColor, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Center(child: Text("HW")),
                                    ),
                                    Positioned(
                                      bottom: -35,
                                      right: -28,
                                      child: Image.asset(
                                        "assets/icons/contry3.png",
                                        scale: 4.5,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 5),
                                    Text(
                                      "Hannah Wilson",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: Get.width > 500 ? 20 : 16,
                                          fontFamily: kCircularStdBold),
                                    ),
                                    Text(
                                      "Back of America",
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: Get.width > 500 ? 20 : 12,
                                          fontFamily: kCircularStdNormal),
                                    ),
                                    Text(
                                      "685545646546",
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: Get.width > 500 ? 20 : 12,
                                          fontFamily: kCircularStdNormal),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  buildtitleWidget("Amount"),
                  const SizedBox(height: 5),
                  CustomTextFormField(
                    hintText: '0.00',
                    maxLines: 1,
                    ctrl: amountController,
                    name: "amount",
                    // formSubmitted: isFormSubmitted,
                    // validationMsg: 'Enter Swift Code',
                  ),
                  const SizedBox(height: 25),
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
                        // Get.toNamed(Routes.accountAddedCompletPage);
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
