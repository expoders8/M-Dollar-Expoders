import 'dart:io';

import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';
import '../../models/international_transfer_list_model.dart';
import '../PaymentSuccess/success_payment.dart';

class SelectBankPage extends StatefulWidget {
  const SelectBankPage({super.key});

  @override
  State<SelectBankPage> createState() => _SelectBankPageState();
}

class _SelectBankPageState extends State<SelectBankPage> {
  bool isFormSubmitted = false;
  final TextEditingController searchController = TextEditingController();
  List<InternationalTransferModel> internationalTransfer = [
    InternationalTransferModel(
      image: "assets/icons/contry1.png",
      name: "ICICI Bank India",
      bankName: "India",
      accountNo: "assets/images/icici.png",
    ),
    InternationalTransferModel(
      image: "assets/icons/contry2.png",
      name: "Bank of America",
      bankName: "United States of America",
      accountNo: "assets/images/backamerica.png",
    ),
    InternationalTransferModel(
      image: "assets/icons/contry3.png",
      name: "HSBC Bank",
      bankName: "United Kingdom",
      accountNo: "assets/images/UK.png",
    ),
    InternationalTransferModel(
      image: "assets/icons/contry4.png",
      name: "Bank of Nova Scotia",
      bankName: "Canada",
      accountNo: "assets/images/nova.png",
    ),
    InternationalTransferModel(
      image: "assets/icons/contry5.png",
      name: "U.S. Bancorp",
      bankName: "United States of America",
      accountNo: "assets/images/US.png",
    ),
    InternationalTransferModel(
      image: "assets/icons/contry6.png",
      name: "Wells Fargo & Company",
      bankName: "United States of America",
      accountNo: "assets/images/wellsfargo.png",
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Select",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 27,
                      fontFamily: kCircularStdBook),
                ),
                const Text(
                  "Bank",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 27,
                      fontFamily: kCircularStdBold),
                ),
                const SizedBox(height: 15),
                TypeAheadField<InternationalTransferModel>(
                  debounceDuration: const Duration(microseconds: 10),
                  hideSuggestionsOnKeyboardHide: true,
                  suggestionsBoxDecoration: const SuggestionsBoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(9.0),
                    ),
                  ),
                  textFieldConfiguration: TextFieldConfiguration(
                    controller: searchController,
                    textInputAction: Platform.isAndroid
                        ? TextInputAction.none
                        : TextInputAction.unspecified,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                        borderSide: const BorderSide(color: kPrimaryColor),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                        borderSide: const BorderSide(color: kPrimaryColor),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                        borderSide: const BorderSide(color: kPrimaryColor),
                      ),
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: kPrimaryColor,
                        fontSize: 16,
                      ),
                      hintMaxLines: 1,
                      contentPadding: const EdgeInsets.fromLTRB(10, 10, 15, 10),
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
                    var filteredTransactions = internationalTransfer
                        .where((txn) =>
                            txn.name
                                .toLowerCase()
                                .contains(pattern.toLowerCase()) ||
                            txn.bankName
                                .toLowerCase()
                                .contains(pattern.toLowerCase()))
                        .toList();

                    return filteredTransactions;
                  },
                  itemBuilder:
                      (context, InternationalTransferModel suggestion) {
                    return ListTile(
                      leading: Image.asset(
                        suggestion.accountNo,
                        height: 40,
                        width: 40,
                      ),
                      title: Text(
                        suggestion.name,
                        style: const TextStyle(color: kWhiteColor),
                      ),
                      subtitle: Text(
                        suggestion.bankName,
                        style: const TextStyle(color: kGreyColor),
                      ),
                    );
                  },
                  noItemsFoundBuilder: (context) => const SizedBox(
                    child: Center(
                      child: Text(
                        'No Bank found',
                        style: TextStyle(
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                  ),
                  transitionBuilder: (context, suggestionsBox, controller) {
                    return suggestionsBox;
                  },
                  onSuggestionSelected: (suggestion) {
                    searchController.text = suggestion.bankName;
                    Get.to(() => const SuccessPaymentPage());
                  },
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: Get.height,
                  width: Get.width,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 5, top: 5),
                    itemCount: internationalTransfer.length,
                    itemBuilder: (context, index) {
                      var transactionData = internationalTransfer[index];
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => const SuccessPaymentPage());
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
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: kWhiteColor, width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Image.asset(
                                              transactionData.accountNo)),
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
    );
  }
}
