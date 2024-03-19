import 'package:flutter_datetime_picker_bdaya/flutter_datetime_picker_bdaya.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import '../UserPayment/money_send.dart';
import '../widgets/custom_textfield.dart';
import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';

class AddPaymentPage extends StatefulWidget {
  final String? tag;
  const AddPaymentPage({super.key, this.tag});

  @override
  State<AddPaymentPage> createState() => _AddPaymentPageState();
}

class _AddPaymentPageState extends State<AddPaymentPage> {
  bool isFormSubmitted = false;
  final TextEditingController cardNoController = TextEditingController();
  final TextEditingController cardHolderNameController =
      TextEditingController();
  final TextEditingController cvvController = TextEditingController();
  String selectStartdate = "MM/DD/YYYY",
      pickedStartDate = "",
      newStartTime = "";
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
                    "Add Payment",
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
                  const SizedBox(height: 25),
                  buildtitleWidget("Card Number"),
                  const SizedBox(height: 5),
                  CustomTextFormField(
                    keyboardType: TextInputType.number,
                    hintText: 'Enter Card Number',
                    maxLines: 1,
                    ctrl: cardNoController,
                    name: "accountno",
                    formSubmitted: isFormSubmitted,
                    validationMsg: 'Enter Card Number',
                  ),
                  const SizedBox(height: 15),
                  buildtitleWidget("Card Holder Name"),
                  const SizedBox(height: 5),
                  CustomTextFormField(
                    hintText: 'Enter Card Holder Name',
                    maxLines: 1,
                    ctrl: cardHolderNameController,
                    name: "cardholder",
                    formSubmitted: isFormSubmitted,
                    validationMsg: 'Card Holder Name is Required',
                  ),
                  const SizedBox(height: 15),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildtitleWidget("Expiry Date"),
                            Container(
                              height: 45,
                              margin: const EdgeInsets.only(top: 5),
                              width: MediaQuery.of(context).size.width * 0.43,
                              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                              decoration: BoxDecoration(
                                color: kWhiteColor,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: kWhiteColor),
                              ),
                              child: InkWell(
                                onTap: () {
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                  DatePickerBdaya.showDatePicker(
                                    context,
                                    showTitleActions: true,
                                    minTime: DateTime.now(),
                                    maxTime: DateTime(2050, 1, 1),
                                    theme: const DatePickerThemeBdaya(
                                      backgroundColor: kBackGroundColor,
                                      itemStyle: TextStyle(
                                        fontSize: 16,
                                        color: kPrimaryColor,
                                        fontFamily: kCircularStdMedium,
                                      ),
                                      doneStyle: TextStyle(
                                        fontSize: 16,
                                        color: kPrimaryColor,
                                      ),
                                      cancelStyle: TextStyle(
                                        fontSize: 16,
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                    onConfirm: (date) {
                                      String formattedDate =
                                          DateFormat('yyyy-MM-dd').format(date);
                                      String selectedFormattedDate =
                                          DateFormat('MM-dd-yyyy').format(date);
                                      setState(() {
                                        selectStartdate = selectedFormattedDate;
                                        pickedStartDate = formattedDate;
                                        newStartTime = formattedDate;
                                        // startDateError = false;
                                      });
                                    },
                                    currentTime: DateTime.now(),
                                    locale: LocaleType.en,
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    selectStartdate == ""
                                        ? "MM/DD/YYYY"
                                        : selectStartdate,
                                    style: TextStyle(
                                      fontFamily: kCircularStdBook,
                                      fontWeight: FontWeight.w400,
                                      color: selectStartdate == "MM/DD/YYYY"
                                          ? kGreyColor
                                          : kPrimaryColor,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildtitleWidget("CVV"),
                            const SizedBox(height: 4),
                            SizedBox(
                              width: 160,
                              child: CustomTextFormField(
                                keyboardType: TextInputType.number,
                                hintText: 'CVV',
                                maxLines: 1,
                                ctrl: cvvController,
                                name: "cvv",
                                formSubmitted: isFormSubmitted,
                                validationMsg: 'Enter CVV',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 100),
                  const Text(
                    "Kindly ensure all beneficiary information is valid to \navoid Transaction failure / rejection",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 13,
                        fontFamily: kCircularStdMedium),
                  ),
                  const SizedBox(height: 10),
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
                        Get.to(() => const MoneySendPage(
                              userName: "By Card",
                            ));
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
