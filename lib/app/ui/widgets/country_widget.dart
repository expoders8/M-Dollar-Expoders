import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../routes/app_pages.dart';
import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';
import '../../models/international_transfer_list_model.dart';

class CountryWidget extends StatefulWidget {
  const CountryWidget({super.key});

  @override
  State<CountryWidget> createState() => _CountryWidgetState();
}

class _CountryWidgetState extends State<CountryWidget> {
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
                    "Select the",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 27,
                        fontFamily: kCircularStdBook),
                  ),
                  const Text(
                    "Country",
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
                  SizedBox(
                    height: Get.height,
                    width: Get.width,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(left: 5, top: 5),
                      itemCount: internationalTransfer.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        var transactionData = internationalTransfer[index];
                        return GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.baneficiaryInformationPage);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 60,
                                width: 60,
                                child: Image.asset(
                                  transactionData.image,
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                transactionData.name,
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: Get.width > 500 ? 20 : 17,
                                    fontFamily: kCircularStdBold),
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
