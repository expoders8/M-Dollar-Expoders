import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/constant/color_constant.dart';
import '../../../config/constant/font_constant.dart';
import '../../models/transection_list_model.dart';
import '../widgets/custom_textfield.dart';

class MPesaAccountPage extends StatefulWidget {
  const MPesaAccountPage({super.key});

  @override
  State<MPesaAccountPage> createState() => _MPesaAccountPageState();
}

class _MPesaAccountPageState extends State<MPesaAccountPage> {
  bool isFormSubmitted = false;
  TextEditingController accountNumberController = TextEditingController();
  List<Transaction> transaction = [
    Transaction(
      image: "assets/icons/light.png",
      name: "Electricity Bill",
      dateTime: "11 Oct 2024",
      money: "-\$60",
    ),
    Transaction(
      image: "assets/icons/t15.png",
      name: "Amelia",
      dateTime: "11 Oct 2024",
      money: "+\$409",
    ),
    Transaction(
      image: "assets/icons/t3.png",
      name: "Aryaa patel",
      dateTime: "11 Oct 2024",
      money: "-\$409",
    ),
    Transaction(
      image: "assets/icons/t4.png",
      name: "Ch Vincent",
      dateTime: "11 Oct 2024",
      money: "-\$60",
    ),
    Transaction(
      image: "assets/icons/t7.png",
      name: "Shivani",
      dateTime: "11 Oct 2024",
      money: "+\$202",
    ),
    Transaction(
      image: "assets/icons/t5.png",
      name: "Shophia",
      dateTime: "11 Oct 2024",
      money: "+\$409",
    ),
    Transaction(
      image: "assets/icons/t16.png",
      name: "Michael",
      dateTime: "11 Oct 2024",
      money: "-\$409",
    ),
    Transaction(
      image: "assets/icons/t17.png",
      name: "Alexander",
      dateTime: "11 Oct 2024",
      money: "+\$202",
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
                'assets/icons/arrow-right.png',
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
                  "Send money to",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 27,
                      fontFamily: kCircularStdBook),
                ),
                const Text(
                  "M-pesa account",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 27,
                      fontFamily: kCircularStdBold),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Pay using M-pesa account",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 15,
                      fontFamily: kCircularStdMedium),
                ),
                const SizedBox(height: 10),
                CustomTextFormField(
                  hintText: '  +1 546-645-4657-53',
                  maxLines: 1,
                  ctrl: accountNumberController,
                  name: "phoneNo",
                  prefixIcon: 'assets/icons/transferMoney.png',
                  formSubmitted: isFormSubmitted,
                  validationMsg: 'M-pesa pin should be 10 digits',
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
                  height: Get.height - 200,
                  width: Get.width,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 5, top: 5),
                    itemCount: transaction.length,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var transactionData = transaction[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6.0, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 42,
                                  width: 42,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Image.asset(
                                    transactionData.image,
                                  ),
                                ),
                                const SizedBox(width: 13),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      transactionData.name,
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: Get.width > 500 ? 20 : 16,
                                          fontFamily: kCircularStdBold),
                                    ),
                                    Text(
                                      transactionData.dateTime,
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: Get.width > 500 ? 20 : 13,
                                          fontFamily: kCircularStdNormal),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              transactionData.money,
                              style: TextStyle(
                                  color: transactionData.money == "+\$409"
                                      ? kGreenColor
                                      : transactionData.money == "+\$202"
                                          ? kGreenColor
                                          : kPrimaryColor,
                                  fontSize: Get.width > 500 ? 20 : 15),
                            ),
                          ],
                        ),
                      );
                    },
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