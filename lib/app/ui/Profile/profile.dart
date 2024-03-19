import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/constant/color_constant.dart';
import '../../../config/constant/font_constant.dart';
import '../../models/international_transfer_list_model.dart';
import '../../routes/app_pages.dart';
import '../AddPayment/add_payment.dart';
import '../UserPayment/money_send.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<InternationalTransferModel> internationalTransfer = [
    InternationalTransferModel(
      image: "assets/icons/mastercard.png",
      name: "Vincent Chepkwony",
      bankName: "Back of America",
      accountNo: "6564795216454651",
    ),
    InternationalTransferModel(
      image: "assets/icons/rupay.png",
      name: "Arya Patel",
      bankName: "ICICI Back of India",
      accountNo: "6564795216454651",
    ),
    InternationalTransferModel(
      image: "assets/icons/visa.png",
      name: "Hanna Wilson",
      bankName: "Back of America",
      accountNo: "6564795216454651",
    ),
  ];
  String getInitials(String fullName) {
    List<String> names = fullName.split(" ");
    String initials = "";

    for (String name in names) {
      if (name.isNotEmpty) {
        initials += name[0].toUpperCase();
      }
    }

    return initials;
  }

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
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      'assets/icons/t1.png',
                      fit: BoxFit.cover,
                      height: 130,
                      width: 130,
                    ),
                    Positioned(
                      top: 50,
                      right: -30,
                      child: Container(
                        height: 45,
                        width: 45,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(25),
                            border:
                                Border.all(color: kPrimaryColor, width: 0.5)),
                        child: Image.asset(
                          'assets/images/qrscanner.png',
                        ),
                      ),
                    )
                  ],
                ),
                const Text(
                  "Hannah John",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 35,
                      fontFamily: kCircularStdMedium),
                ),
                Row(
                  children: [
                    const Text(
                      "+1758574947574",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 20,
                          fontFamily: kCircularStdMedium),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 5),
                      decoration: BoxDecoration(
                          color: kCardColor,
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        children: [
                          Image.asset("assets/icons/paymentSuccses.png",
                              scale: 1.8),
                          const SizedBox(width: 5),
                          const Text(
                            "M-Dollar ID",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 13,
                                fontFamily: kCircularStdMedium),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  "Your Balance",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 16,
                      fontFamily: kCircularStdNormal),
                ),
                Row(
                  children: [
                    const Row(
                      children: [
                        Text(
                          "\$",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 46,
                              fontFamily: kCircularStdNormal),
                        ),
                        Text(
                          "1599",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 49,
                              fontFamily: kCircularStdBold),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 2),
                      decoration: BoxDecoration(
                          color: const Color(0xFF02BB8F),
                          borderRadius: BorderRadius.circular(7)),
                      child: const Text(
                        "**67",
                        style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 14,
                            fontFamily: kCircularStdBold),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    // Get.toNamed(Routes.countryWidget);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: kPrimaryColor),
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            'assets/icons/plus.png',
                            scale: 1.6,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Padding(
                          padding: EdgeInsets.only(left: 6.0, top: 5),
                          child: Text(
                            "Add New Bank Account",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 16,
                                fontFamily: kCircularStdMedium),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3F0EA),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 260,
                  width: Get.width,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 5, top: 5),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: internationalTransfer.length,
                    itemBuilder: (context, index) {
                      var transactionData = internationalTransfer[index];
                      String initials = getInitials(transactionData.name);
                      return GestureDetector(
                        onTap: () {
                          bottomSheetforAddPayment();
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6.0, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: kWhiteColor,
                                            border: Border.all(
                                                color: kWhiteColor, width: 1),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                            child: Text(initials.toString())),
                                      ),
                                      Positioned(
                                        bottom: -43,
                                        right: -38,
                                        child: Image.asset(
                                          transactionData.image,
                                          fit: BoxFit.cover,
                                          height: 80,
                                          width: 80,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(width: 13),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 5),
                                      Text(
                                        transactionData.name,
                                        style: TextStyle(
                                            color: kPrimaryColor,
                                            fontSize: Get.width > 500 ? 20 : 16,
                                            fontFamily: kCircularStdBold),
                                      ),
                                      Text(
                                        transactionData.bankName,
                                        style: TextStyle(
                                            color: kPrimaryColor,
                                            fontSize: Get.width > 500 ? 20 : 12,
                                            fontFamily: kCircularStdNormal),
                                      ),
                                      Text(
                                        transactionData.accountNo,
                                        style: TextStyle(
                                            color: kPrimaryColor,
                                            fontSize: Get.width > 500 ? 20 : 12,
                                            fontFamily: kCircularStdNormal),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {
                                  bottomSheetforCards();
                                },
                                icon: Image.asset(
                                  'assets/icons/vartical-dots.png',
                                  scale: 1.6,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                buildListTileWIdget("Your QR code"),
                buildListTileWIdget("Setting"),
                buildListTileWIdget("Get Help"),
                buildListTileWIdget("Languages"),
                CupertinoButton(
                    child: const Text(
                      "Logout",
                      style: TextStyle(
                          color: Color(0xFF7C7A78),
                          fontSize: 16,
                          fontFamily: kCircularStdMedium),
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.loginPage);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildListTileWIdget(String title) {
    return CupertinoButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: kPrimaryColor,
                  fontSize: 16,
                  fontFamily: kCircularStdMedium),
            ),
            Image.asset(
              "assets/icons/arrow-right-outline.png",
              scale: 1.3,
            )
          ],
        ),
        onPressed: () {});
  }

  bottomSheetforCards() {
    return showModalBottomSheet(
      context: context,
      backgroundColor: kWhiteColor,
      builder: (context) {
        return Wrap(
          children: [
            const Center(
              child: ImageIcon(
                AssetImage("assets/icons/bottomsheetLine.png"),
                size: 30,
                color: Color(0XffBFC5CC),
              ),
            ),
            Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: SizedBox(
                height: 180,
                width: Get.width,
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Card",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 25,
                            fontFamily: kCircularStdMedium),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Update Card",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 18,
                            fontFamily: kCircularStdMedium),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Delete Card",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 18,
                            fontFamily: kCircularStdMedium),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  bottomSheetforAddPayment() {
    return showModalBottomSheet(
      context: context,
      backgroundColor: kWhiteColor,
      builder: (context) {
        return Wrap(
          children: [
            const Center(
              child: ImageIcon(
                AssetImage("assets/icons/bottomsheetLine.png"),
                size: 30,
                color: Color(0XffBFC5CC),
              ),
            ),
            Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: SizedBox(
                height: 180,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Add Payment",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 25,
                            fontFamily: kCircularStdMedium),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: Get.width,
                        child: CupertinoButton(
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          onPressed: () {
                            Get.back();
                            Get.to(() => const AddPaymentPage(
                                  tag: "By Card",
                                ));
                          },
                          child: const Text(
                            "By Card",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 18,
                                fontFamily: kCircularStdMedium),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        width: Get.width,
                        child: CupertinoButton(
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          onPressed: () {
                            Get.back();
                            Get.to(() => const MoneySendPage(
                                  userName: "By Internet",
                                ));
                          },
                          child: const Text(
                            "By Internet Banking",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 18,
                                fontFamily: kCircularStdMedium),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
