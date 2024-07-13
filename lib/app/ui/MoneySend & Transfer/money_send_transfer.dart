import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../UserPayment/user_payment.dart';
import '../../models/transection_list_model.dart';
import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';
import '../widgets/country_code_widget.dart';
import '../widgets/custom_textfield.dart';

class MoneySendAndTransferPage extends StatefulWidget {
  final String? tag;
  const MoneySendAndTransferPage({super.key, this.tag});

  @override
  State<MoneySendAndTransferPage> createState() =>
      _MoneySendAndTransferPageState();
}

class _MoneySendAndTransferPageState extends State<MoneySendAndTransferPage> {
  bool isFormSubmitted = false;
  TextEditingController accountNumberController = TextEditingController();
  final TextEditingController pinController = TextEditingController();
  final TextEditingController mobileNoController = TextEditingController();
  var data = ['kamrej', 'jajet', 'delta'];
  String countryCode = "+91";
  String countryImage = "assets/icons/countryCode7.png";
  List<Transaction> transaction = [
    Transaction(
      image: "assets/icons/light.png",
      name: "Electricity Bill",
      dateTime: "11 Oct 2024",
      money: "-\$60",
      number: "+175857494747",
    ),
    Transaction(
      image: "assets/icons/t15.png",
      name: "Amelia",
      dateTime: "11 Oct 2024",
      money: "+\$409",
      number: "175857494747",
    ),
    Transaction(
      image: "assets/icons/t3.png",
      name: "Aryaa patel",
      dateTime: "11 Oct 2024",
      money: "-\$409",
      number: "175857494747",
    ),
    Transaction(
      image: "assets/icons/t4.png",
      name: "Ch Vincent",
      dateTime: "11 Oct 2024",
      money: "-\$60",
      number: "175857494747",
    ),
    Transaction(
      image: "assets/icons/t7.png",
      name: "Shivani",
      dateTime: "11 Oct 2024",
      money: "+\$202",
      number: "175857494747",
    ),
    Transaction(
      image: "assets/icons/t5.png",
      name: "Shophia",
      dateTime: "11 Oct 2024",
      money: "+\$409",
      number: "175857494747",
    ),
    Transaction(
      image: "assets/icons/t16.png",
      name: "Michael",
      dateTime: "11 Oct 2024",
      money: "-\$409",
      number: "175857494747",
    ),
    Transaction(
      image: "assets/icons/t17.png",
      name: "Alexander",
      dateTime: "11 Oct 2024",
      money: "+\$202",
      number: "175857494747",
    ),
  ];
  List<Transaction> mobileNo = [
    Transaction(
      image: "assets/icons/t15.png",
      name: "Amelia",
      dateTime: "11 Oct 2024",
      money: "+\$409",
      number: "+175857494747",
    ),
    Transaction(
      image: "assets/icons/t3.png",
      name: "Aryaa patel",
      dateTime: "11 Oct 2024",
      money: "-\$409",
      number: "+175857494747",
    ),
    Transaction(
      image: "assets/icons/t4.png",
      name: "Ch Vincent",
      dateTime: "11 Oct 2024",
      money: "-\$60",
      number: "+16895656565",
    ),
    Transaction(
      image: "assets/icons/t7.png",
      name: "Shivani",
      dateTime: "11 Oct 2024",
      money: "+\$202",
      number: "+175857494747",
    ),
    Transaction(
      image: "assets/icons/t5.png",
      name: "Shophia",
      dateTime: "11 Oct 2024",
      money: "+\$409",
      number: "+175857494747",
    ),
    Transaction(
      image: "assets/icons/t16.png",
      name: "Michael",
      dateTime: "11 Oct 2024",
      money: "-\$409",
      number: "+175857494747",
    ),
    Transaction(
      image: "assets/icons/t17.png",
      name: "Alexander",
      dateTime: "11 Oct 2024",
      money: "+\$202",
      number: "+175857494747",
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
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Send money to",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 27,
                      fontFamily: kCircularStdBook),
                ),
                Text(
                  widget.tag.toString(),
                  style: const TextStyle(
                      color: kPrimaryColor,
                      fontSize: 27,
                      fontFamily: kCircularStdBold),
                ),
                const SizedBox(height: 15),
                Text(
                  "Pay using ${widget.tag}",
                  style: const TextStyle(
                      color: kPrimaryColor,
                      fontSize: 15,
                      fontFamily: kCircularStdMedium),
                ),
                const SizedBox(height: 10),
                widget.tag == "mobile Number"
                    ? TypeAheadField<Transaction>(
                        debounceDuration: const Duration(microseconds: 10),
                        hideSuggestionsOnKeyboardHide: true,
                        suggestionsBoxDecoration:
                            const SuggestionsBoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(9.0),
                          ),
                        ),
                        textFieldConfiguration: TextFieldConfiguration(
                          controller: mobileNoController,
                          keyboardType: TextInputType.phone,
                          textInputAction: Platform.isAndroid
                              ? TextInputAction.none
                              : TextInputAction.unspecified,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: kWhiteColor,
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
                            hintText: '546-645-4657-53',
                            hintStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              color: kGreyColor,
                              fontSize: 16,
                            ),
                            hintMaxLines: 1,
                            contentPadding:
                                const EdgeInsets.fromLTRB(20, 15, 15, 15),
                            prefixIcon: SizedBox(
                              height: 55,
                              width: 95,
                              child: CupertinoButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                  Get.to(() => CountryCodeWidget(
                                        callbackContryCode: (String val) {
                                          setState(() {
                                            countryCode = val;
                                          });
                                        },
                                        callbackContryImage: (String val) {
                                          setState(() {
                                            countryImage = val;
                                          });
                                        },
                                      ));
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height: 55,
                                      width: 93,
                                      decoration: const BoxDecoration(
                                        color: kPrimaryColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(width: 2.3),
                                          Image.asset(
                                            "assets/icons/transferMoney.png",
                                            color: kWhiteColor,
                                            height: 20,
                                            width: 20,
                                            scale: 1.6,
                                          ),
                                          const SizedBox(width: 3),
                                          Text(
                                            countryCode,
                                            style: const TextStyle(
                                                color: kWhiteColor,
                                                fontFamily: kCircularStdNormal,
                                                fontSize: 13),
                                          ),
                                          Image.asset(
                                            countryImage,
                                            height: 40,
                                            width: 30,
                                            fit: BoxFit.cover,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                          var filteredTransactions = mobileNo
                              .where((txn) => txn.number
                                  .toLowerCase()
                                  .contains(pattern.toLowerCase()))
                              .toList();

                          return filteredTransactions;
                        },
                        itemBuilder: (context, Transaction suggestion) {
                          return ListTile(
                            leading: Image.asset(
                              suggestion.image,
                              height: 40,
                              width: 40,
                            ),
                            title: Text(
                              suggestion.name,
                              style: const TextStyle(color: kWhiteColor),
                            ),
                            subtitle: Text(
                              suggestion.number,
                              style: const TextStyle(color: kGreyColor),
                            ),
                          );
                        },
                        noItemsFoundBuilder: (context) => GestureDetector(
                          onTap: () {
                            Get.to(
                              () => UserPaymentPage(
                                userName: "Amila",
                                userImage: "assets/icons/t4.png",
                                userNumber: mobileNoController.text,
                              ),
                            );
                            mobileNoController.clear();
                          },
                          child: ListTile(
                            leading: Image.asset(
                              "assets/icons/t4.png",
                              height: 40,
                              width: 40,
                            ),
                            title: const Text(
                              "Amila",
                              style: TextStyle(color: kWhiteColor),
                            ),
                            subtitle: Text(
                              mobileNoController.text,
                              style: const TextStyle(color: kGreyColor),
                            ),
                          ),
                        ),
                        transitionBuilder:
                            (context, suggestionsBox, controller) {
                          return suggestionsBox;
                        },
                        onSuggestionSelected: (suggestion) {
                          mobileNoController.text = suggestion.number;
                          Get.to(
                            () => UserPaymentPage(
                              userName: suggestion.name,
                              userImage: suggestion.image,
                              userNumber: suggestion.number,
                            ),
                          );
                          mobileNoController.clear();
                        },
                      )
                    : CustomTextFormField(
                        hintText: '546 -645-4657-53',
                        maxLines: 1,
                        ctrl: pinController,
                        keyboardType: TextInputType.number,
                        name: "pin",
                        // formSubmitted: isFormSubmitted,
                        // validationMsg: 'Enter Swift Code',
                      ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 6.0, top: 5),
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
                  height: Get.height - 314,
                  width: Get.width,
                  child: AnimationLimiter(
                    child: ListView.builder(
                      padding: const EdgeInsets.only(left: 5, top: 5),
                      itemCount: transaction.length,
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      itemBuilder: (context, index) {
                        var transactionData = transaction[index];
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          delay: const Duration(milliseconds: 100),
                          child: SlideAnimation(
                            duration: const Duration(milliseconds: 2500),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: FadeInAnimation(
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: const Duration(milliseconds: 2500),
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(
                                    () => UserPaymentPage(
                                      userName: transactionData.name,
                                      userImage: transactionData.image,
                                      userNumber: transactionData.number,
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6.0, vertical: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 42,
                                            width: 42,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(25)),
                                            child: Image.asset(
                                              transactionData.image,
                                            ),
                                          ),
                                          const SizedBox(width: 13),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                transactionData.name,
                                                style: TextStyle(
                                                    color: kPrimaryColor,
                                                    fontSize: Get.width > 500
                                                        ? 20
                                                        : 16,
                                                    fontFamily:
                                                        kCircularStdBold),
                                              ),
                                              Text(
                                                transactionData.number,
                                                style: TextStyle(
                                                    color: kPrimaryColor,
                                                    fontSize: Get.width > 500
                                                        ? 20
                                                        : 13,
                                                    fontFamily:
                                                        kCircularStdNormal),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text(
                                        transactionData.money,
                                        style: TextStyle(
                                            color: transactionData.money ==
                                                    "+\$409"
                                                ? kGreenColor
                                                : transactionData.money ==
                                                        "+\$202"
                                                    ? kGreenColor
                                                    : kPrimaryColor,
                                            fontSize:
                                                Get.width > 500 ? 20 : 15),
                                      ),
                                    ],
                                  ),
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
      ),
    );
  }
}
