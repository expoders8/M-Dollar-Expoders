import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../routes/app_pages.dart';
import '../widgets/custom_textfield.dart';
import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';

class AdditionalTransectionDetailsPage extends StatefulWidget {
  const AdditionalTransectionDetailsPage({super.key});

  @override
  State<AdditionalTransectionDetailsPage> createState() =>
      _AdditionalTransectionDetailsPageState();
}

class _AdditionalTransectionDetailsPageState
    extends State<AdditionalTransectionDetailsPage> {
  bool isFormSubmitted = false;
  final TextEditingController purposeController = TextEditingController();
  final TextEditingController transferCodeController = TextEditingController();
  final TextEditingController chargesController = TextEditingController();
  var data = ['kamrej', 'jajet', 'delta'];
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
                  const SizedBox(height: 25),
                  DottedBorder(
                    strokeWidth: 0.65,
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(13),
                    color: kPrimaryColor,
                    padding: EdgeInsets.zero,
                    child: SizedBox(
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildDetailsWidget("Paying", "USD 1000"),
                            const SizedBox(height: 14),
                            buildDetailsWidget(
                                "Beneficiary will receive", "INR 78000"),
                            const SizedBox(height: 14),
                            buildDetailsWidget(
                                "Exchange Rate", "1 INR = 0.012 USD"),
                            const SizedBox(height: 14),
                            buildDetailsWidget("Fees", "USD 0.00"),
                            const SizedBox(height: 14),
                            buildDetailsWidget("Transfer Date", "Today"),
                            const SizedBox(height: 14),
                            buildDetailsWidget(
                                "Transfer Type", "Telegraphic Transfer"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  buildtitleWidget("Additional Details"),
                  const SizedBox(height: 10),
                  buildtitleWidget("Purpose of Transfer"),
                  const SizedBox(height: 5),
                  TypeAheadField(
                    debounceDuration: const Duration(microseconds: 10),
                    hideSuggestionsOnKeyboardHide: true,
                    textFieldConfiguration: TextFieldConfiguration(
                      controller: purposeController,
                      textInputAction: Platform.isAndroid
                          ? TextInputAction.none
                          : TextInputAction.unspecified,
                      decoration: InputDecoration(
                        fillColor: kWhiteColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9.0),
                          borderSide: BorderSide.none,
                        ),
                        // Remove border from the input field itself
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9.0),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9.0),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Select',
                        hintStyle: const TextStyle(
                            color: kGreyColor, fontWeight: FontWeight.w500),
                        hintMaxLines: 1,
                        contentPadding: const EdgeInsets.all(15),
                        suffixIcon: Image.asset(
                          "assets/icons/arrow-bottom-outline.png",
                          scale: 1.2,
                          width: 5,
                          color: kGreyColor,
                        ),
                      ),
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: kPrimaryColor,
                        fontSize: 14,
                      ),
                      onSubmitted: (value) {},
                      autocorrect: true,
                      cursorColor: kPrimaryColor,
                    ),
                    suggestionsCallback: (String pattern) async {
                      List<String> filteredCities = data
                          .where((city) => city
                              .toLowerCase()
                              .contains(pattern.toLowerCase()))
                          .toList();
                      return filteredCities;
                    },
                    itemBuilder: (context, String suggestion) {
                      return ListTile(
                        title: Text(suggestion),
                      );
                    },
                    noItemsFoundBuilder: (context) => const SizedBox(
                      child: Center(
                        child: Text('No City found'),
                      ),
                    ),
                    transitionBuilder: (context, suggestionsBox, controller) {
                      return suggestionsBox;
                    },
                    onSuggestionSelected: (String suggestion) {
                      purposeController.text = suggestion;
                    },
                  ),
                  const SizedBox(height: 10),
                  buildtitleWidget("Transfer Code"),
                  const SizedBox(height: 5),
                  TypeAheadField(
                    debounceDuration: const Duration(microseconds: 10),
                    hideSuggestionsOnKeyboardHide: true,
                    textFieldConfiguration: TextFieldConfiguration(
                      controller: transferCodeController,
                      textInputAction: Platform.isAndroid
                          ? TextInputAction.none
                          : TextInputAction.unspecified,
                      decoration: InputDecoration(
                        fillColor: kWhiteColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9.0),
                          borderSide: BorderSide.none,
                        ),
                        // Remove border from the input field itself
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9.0),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9.0),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Select',
                        hintStyle: const TextStyle(
                            color: kGreyColor, fontWeight: FontWeight.w500),
                        hintMaxLines: 1,
                        contentPadding: const EdgeInsets.all(15),
                        suffixIcon: Image.asset(
                          "assets/icons/arrow-bottom-outline.png",
                          scale: 1.2,
                          width: 5,
                          color: kGreyColor,
                        ),
                      ),
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: kPrimaryColor,
                        fontSize: 14,
                      ),
                      onSubmitted: (value) {},
                      autocorrect: true,
                      cursorColor: kPrimaryColor,
                    ),
                    suggestionsCallback: (String pattern) async {
                      List<String> filteredCities = data
                          .where((city) => city
                              .toLowerCase()
                              .contains(pattern.toLowerCase()))
                          .toList();
                      return filteredCities;
                    },
                    itemBuilder: (context, String suggestion) {
                      return ListTile(
                        title: Text(suggestion),
                      );
                    },
                    noItemsFoundBuilder: (context) => const SizedBox(
                      child: Center(
                        child: Text('No City found'),
                      ),
                    ),
                    transitionBuilder: (context, suggestionsBox, controller) {
                      return suggestionsBox;
                    },
                    onSuggestionSelected: (String suggestion) {
                      transferCodeController.text = suggestion;
                    },
                  ),
                  const SizedBox(height: 15),
                  buildtitleWidget("Who wil pay the charges"),
                  const SizedBox(height: 5),
                  CustomTextFormField(
                    hintText: 'Select',
                    maxLines: 1,
                    ctrl: chargesController,
                    name: "charges",
                    // formSubmitted: isFormSubmitted,
                    // validationMsg: 'Enter Swift Code',
                  ),
                  const SizedBox(height: 35),
                  const Text(
                    "By continuing you confirm and acknowledge the terms of transfer the and penalties & fees",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 13,
                        fontFamily: kCircularStdMedium),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: Get.width,
                    child: CupertinoButton(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Confirm and Pay",
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
                        Get.toNamed(Routes.purposeTransectionPage);
                      },
                    ),
                  ),
                  const SizedBox(height: 15),
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
        style: TextStyle(
            color: kPrimaryColor,
            fontSize: title == "Additional Details" ? 18 : 14,
            fontFamily: title == "Additional Details"
                ? kCircularStdMedium
                : kCircularStdNormal),
      ),
    );
  }

  buildDetailsWidget(String title, String money) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: kTextSecondaryColor,
              fontSize: 13,
              fontFamily: kCircularStdMedium),
        ),
        Text(
          money,
          style: const TextStyle(
              color: kPrimaryColor,
              fontSize: 14,
              fontFamily: kCircularStdMedium),
        ),
      ],
    );
  }
}
