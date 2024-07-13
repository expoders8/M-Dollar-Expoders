import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

import '../../config/constant/color_constant.dart';
import '../../config/constant/font_constant.dart';
import '../models/transection_list_model.dart';
import '../ui/UserPayment/user_payment.dart';

class TransactionListViewPage extends StatefulWidget {
  const TransactionListViewPage({super.key});

  @override
  State<TransactionListViewPage> createState() =>
      _TransactionListViewPageState();
}

class _TransactionListViewPageState extends State<TransactionListViewPage> {
  final TextEditingController searchController = TextEditingController();
  List<Transaction> transaction = [
    Transaction(
      image: "assets/icons/light.png",
      name: "Electricity Bill",
      dateTime: "11 Oct 2024",
      money: "-\$60",
      number: "175857494747",
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
      money: "-\$409",
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
      image: "assets/icons/t3.png",
      name: "Aryaa patel",
      dateTime: "11 Oct 2024",
      money: "-\$409",
      number: "175857494747",
    ),
    Transaction(
      image: "assets/icons/t15.png",
      name: "Amelia",
      dateTime: "11 Oct 2024",
      money: "+\$409",
      number: "175857494747",
    ),
    Transaction(
      image: "assets/icons/t4.png",
      name: "Ch Vincent",
      dateTime: "11 Oct 2024",
      money: "-\$60",
      number: "175857494747",
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
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
          child: Column(
            children: [
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
              const SizedBox(height: 10),
              Expanded(
                child: AnimationLimiter(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 5, top: 5),
                    itemCount: transaction.length,
                    scrollDirection: Axis.vertical,
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
                            child: CupertinoButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
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
                                                  fontSize:
                                                      Get.width > 500 ? 20 : 16,
                                                  fontFamily: kCircularStdBold),
                                            ),
                                            Text(
                                              transactionData.dateTime,
                                              style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize:
                                                      Get.width > 500 ? 20 : 13,
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
                                          color:
                                              transactionData.money == "+\$409"
                                                  ? kGreenColor
                                                  : transactionData.money ==
                                                          "+\$202"
                                                      ? kGreenColor
                                                      : kPrimaryColor,
                                          fontSize: Get.width > 500 ? 20 : 15),
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
    );
  }
}
