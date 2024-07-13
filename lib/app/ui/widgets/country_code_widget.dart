import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../routes/app_pages.dart';
import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';
import '../../models/international_transfer_list_model.dart';

typedef StringCallback = void Function(String val);

class CountryCodeWidget extends StatefulWidget {
  final StringCallback? callbackContryCode;
  final StringCallback? callbackContryImage;
  const CountryCodeWidget(
      {super.key, this.callbackContryCode, this.callbackContryImage});

  @override
  State<CountryCodeWidget> createState() => _CountryCodeWidgetState();
}

class _CountryCodeWidgetState extends State<CountryCodeWidget> {
  bool isFormSubmitted = false;
  final TextEditingController searchController = TextEditingController();
  List<InternationalTransferModel> internationalTransfer = [
    InternationalTransferModel(
      image: "assets/icons/countryCode1.png",
      name: "United States",
      bankName: "+1",
      accountNo: "6564795216454651",
    ),
    InternationalTransferModel(
      image: "assets/icons/countryCode2.png",
      name: "Kenya",
      bankName: "+254",
      accountNo: "6564795216454651",
    ),
    InternationalTransferModel(
      image: "assets/icons/countryCode3.png",
      name: "Uganda",
      bankName: "+256",
      accountNo: "6564795216454651",
    ),
    InternationalTransferModel(
      image: "assets/icons/countryCode4.png",
      name: "Canada",
      bankName: "+1",
      accountNo: "6564795216454651",
    ),
    InternationalTransferModel(
      image: "assets/icons/countryCode5.png",
      name: "United Kingdom",
      bankName: "+44",
      accountNo: "6564795216454651",
    ),
    InternationalTransferModel(
      image: "assets/icons/countryCode6.png",
      name: "South Africa",
      bankName: "+27",
      accountNo: "6564795216454651",
    ),
    InternationalTransferModel(
      image: "assets/icons/countryCode7.png",
      name: "India",
      bankName: "+91",
      accountNo: "6564795216454651",
    ),
    InternationalTransferModel(
      image: "assets/icons/countryCode8.png",
      name: "Philippines",
      bankName: "+63",
      accountNo: "6564795216454651",
    ),
    InternationalTransferModel(
      image: "assets/icons/countryCode5.png",
      name: "US",
      bankName: "+55",
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
                "Country Code",
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
                height: Get.height - 256,
                width: Get.width,
                child: AnimationLimiter(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 5, top: 5),
                    itemCount: internationalTransfer.length,
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    itemBuilder: (context, index) {
                      var transactionData = internationalTransfer[index];
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        delay: const Duration(milliseconds: 100),
                        child: SlideAnimation(
                          duration: const Duration(milliseconds: 2500),
                          curve: Curves.fastLinearToSlowEaseIn,
                          child: FadeInAnimation(
                            curve: Curves.fastLinearToSlowEaseIn,
                            duration: const Duration(milliseconds: 2500),
                            child: CupertinoButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                widget.callbackContryCode!(
                                    transactionData.bankName);
                                widget.callbackContryImage!(
                                    transactionData.image);
                                Get.back();
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    transactionData.image,
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    transactionData.bankName,
                                    style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: Get.width > 500 ? 20 : 17,
                                        fontFamily: kCircularStdMedium),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    transactionData.name,
                                    style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: Get.width > 500 ? 20 : 17,
                                        fontFamily: kCircularStdMedium),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
