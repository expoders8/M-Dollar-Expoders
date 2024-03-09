import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mdollerapp/app/routes/app_pages.dart';

import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';
import '../../models/international_transfer_list_model.dart';

class InternationalTransferPage extends StatefulWidget {
  const InternationalTransferPage({super.key});

  @override
  State<InternationalTransferPage> createState() =>
      _InternationalTransferPageState();
}

class _InternationalTransferPageState extends State<InternationalTransferPage> {
  bool isFormSubmitted = false;
  final TextEditingController searchController = TextEditingController();
  List<InternationalTransferModel> internationalTransfer = [
    InternationalTransferModel(
      image: "assets/icons/contry1.png",
      name: "Arya Patel",
      bankName: "ICICI Back of India",
      accountNo: "6564795216454651",
    ),
    InternationalTransferModel(
      image: "assets/icons/contry2.png",
      name: "Hanna Wilson",
      bankName: "Back of America",
      accountNo: "6564795216454651",
    ),
    InternationalTransferModel(
      image: "assets/icons/contry3.png",
      name: "Vincent Chepkwony",
      bankName: "Back of America",
      accountNo: "6564795216454651",
    ),
    InternationalTransferModel(
      image: "assets/icons/contry4.png",
      name: "Jonthan Thoms",
      bankName: "Back of America",
      accountNo: "6564795216454651",
    ),
    InternationalTransferModel(
      image: "assets/icons/contry5.png",
      name: "Nicholas Smith",
      bankName: "Back of America",
      accountNo: "6564795216454651",
    ),
    InternationalTransferModel(
      image: "assets/icons/contry6.png",
      name: "Alexander Davisn",
      bankName: "Back of America",
      accountNo: "6564795216454651",
    ),
    InternationalTransferModel(
      image: "assets/icons/contry2.png",
      name: "Michael Jons",
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
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "International",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 27,
                        fontFamily: kCircularStdBook),
                  ),
                  const Text(
                    "Tranfer",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 27,
                        fontFamily: kCircularStdBold),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    controller: searchController,
                    decoration: const InputDecoration(
                      labelText: 'Search',
                      labelStyle: TextStyle(color: kPrimaryColor),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFADAEAC),
                          width: 1,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFADAEAC),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.countryWidget);
                    },
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
                            "Transfer to new beneficiary",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 16,
                                fontFamily: kCircularStdMedium),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 3.0, top: 5),
                    child: Text(
                      "Pay again",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 17,
                          fontFamily: kCircularStdMedium),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: Get.height,
                    width: Get.width,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(left: 5, top: 5),
                      itemCount: internationalTransfer.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        var transactionData = internationalTransfer[index];
                        String initials = getInitials(transactionData.name);
                        return Padding(
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
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
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
                                          scale: 3.5,
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
                                            fontSize: Get.width > 500 ? 20 : 17,
                                            fontFamily: kCircularStdBold),
                                      ),
                                      Text(
                                        transactionData.bankName,
                                        style: TextStyle(
                                            color: kPrimaryColor,
                                            fontSize: Get.width > 500 ? 20 : 13,
                                            fontFamily: kCircularStdNormal),
                                      ),
                                      Text(
                                        transactionData.accountNo,
                                        style: TextStyle(
                                            color: kPrimaryColor,
                                            fontSize: Get.width > 500 ? 20 : 13,
                                            fontFamily: kCircularStdNormal),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Image.asset(
                                'assets/icons/arrow-right-outline.png',
                                scale: 1.3,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
