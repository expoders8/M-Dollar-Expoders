import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/constant/color_constant.dart';
import '../../../config/constant/font_constant.dart';
import '../../models/business_list_model.dart';
import '../../models/transection_list_model.dart';
import '../../models/user_list_model.dart';
import '../../routes/app_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedTitle = "Transfer";
  List<User> users = [
    User(
      image: "assets/icons/plus.png",
      name: "New",
    ),
    User(
      image: "assets/icons/t1.png",
      name: "Shivani",
    ),
    User(
      image: "assets/icons/t8.png",
      name: "Vincent",
    ),
    User(
      image: "assets/icons/t9.png",
      name: "Sophia",
    ),
    User(
      image: "assets/icons/t14.png",
      name: "Scarlett",
    ),
    User(
      image: "assets/icons/t2.png",
      name: "Aryaa",
    ),
    User(
      image: "assets/icons/t13.png",
      name: "Shivani",
    ),
    User(
      image: "assets/icons/t10.png",
      name: "Vincent",
    ),
    User(
      image: "assets/icons/t11.png",
      name: "Sophia",
    ),
    User(
      image: "assets/icons/arrow-down.png",
      name: "More",
    )
  ];
  List<Business> business = [
    Business(
      image: "assets/icons/apple.png",
      name: "Apple",
    ),
    Business(
      image: "assets/icons/facebook.png",
      name: "Facebook",
    ),
    Business(
      image: "assets/icons/sptify.png",
      name: "Spotify",
    ),
    Business(
      image: "assets/icons/netflixs.png",
      name: "Netflix",
    ),
    Business(
      image: "assets/icons/uber.png",
      name: "Uber",
    ),
    Business(
      image: "assets/icons/musicWave.png",
      name: "Musicaly",
    ),
  ];
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
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBackGround1Color,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Amelia",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 18,
                  fontFamily: kCircularStdBold),
            ),
            Text(
              "ID : 65255",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 12,
                  fontFamily: kCircularStdBook),
            ),
          ],
        ),
        leading: Image.asset(
          'assets/icons/t1.png',
          scale: 2.4,
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [kAppBackGround1Color, kAppBackGround2Color],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.repeated),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Balance",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 14,
                      fontFamily: kCircularStdBook),
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
                SizedBox(
                  height: 150,
                  width: size.width,
                  child: Card(
                    color: kPrimaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 10),
                        buildPaymentCardWidget(
                            "Transfer", "assets/icons/phone.png"),
                        buildPaymentCardWidget(
                            "Pay by Scan", "assets/icons/noun-scan.png"),
                        buildPaymentCardWidget(
                            "Bill Pay", "assets/icons/document.png"),
                        buildPaymentCardWidget(
                            "Bank Pay", "assets/icons/homeicon.png"),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                buildTitleWidget("Pay Again"),
                const SizedBox(height: 10),
                SizedBox(
                  height: 180,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: size.width > 500 ? 6 : 5,
                      mainAxisExtent: size.width > 500
                          ? 80
                          : Platform.isIOS
                              ? 80
                              : 90,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      var data = users[index];
                      return GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              padding: EdgeInsets.all(data.name == "New"
                                  ? 13
                                  : data.name == "More"
                                      ? 10
                                      : 0),
                              decoration: BoxDecoration(
                                  color: data.name == "More"
                                      ? kCardColor
                                      : kPrimaryColor,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Image.asset(
                                data.image,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 100,
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                data.name.toString(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: size.width > 500 ? 20 : 13),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                buildTitleWidget("Business"),
                const SizedBox(height: 10),
                SizedBox(
                  height: 120,
                  width: size.width,
                  child: Card(
                    color: kCardColor,
                    elevation: 3,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(left: 5),
                      itemCount: business.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var data = business[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 44,
                                width: 44,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25)),
                                child: Image.asset(
                                  data.image,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                data.name,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: size.width > 500 ? 20 : 13),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                buildTitleWidget("Transaction"),
                const SizedBox(height: 10),
                SizedBox(
                  height: 350,
                  width: size.width,
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
                                          fontSize: size.width > 500 ? 20 : 16,
                                          fontFamily: kCircularStdBold),
                                    ),
                                    Text(
                                      transactionData.dateTime,
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: size.width > 500 ? 20 : 13,
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
                                  fontSize: size.width > 500 ? 20 : 15),
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

  bottomSheetforTranferTo() {
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
                        "Tranfer to",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 22,
                            fontFamily: kCircularStdMedium),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                              Get.toNamed(Routes.mPesaAccountPage);
                            },
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: const Color(0xFFE5E6E0),
                                  ),
                                  height: 50,
                                  width: 50,
                                  child: Image.asset(
                                    "assets/icons/transferMoney.png",
                                    scale: 1.5,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "M-Pesa\nAccount",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 14,
                                      fontFamily: kCircularStdNormal),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 34),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xFFE5E6E0),
                                ),
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  "assets/icons/paymentPhone.png",
                                  scale: 1.5,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Mobile\nNumber",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 14,
                                    fontFamily: kCircularStdNormal),
                              ),
                            ],
                          ),
                          const SizedBox(width: 34),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xFFE5E6E0),
                                ),
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  "assets/icons/paymentId.png",
                                  scale: 1.5,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "M-Dollar\nID",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 14,
                                    fontFamily: kCircularStdNormal),
                              ),
                            ],
                          ),
                        ],
                      )
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

  buildTitleWidget(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0, top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: kPrimaryColor,
                fontSize: 17,
                fontFamily: kCircularStdBold),
          ),
          title == "Transaction"
              ? Container(
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  child: const Text(
                    "View All",
                    style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 12,
                        fontFamily: kCircularStdNormal),
                  ),
                )
              : Container()
        ],
      ),
    );
  }

  buildPaymentCardWidget(String title, String icon) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTitle = title;
        });
        if (selectedTitle == "Transfer") {
          bottomSheetforTranferTo();
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                  color: selectedTitle == title
                      ? const Color(0xFF02BB8F)
                      : const Color(0xFF444444),
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                icon,
                scale: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
                color: kTextSecondaryColor,
                fontSize: 14,
                fontFamily: kCircularStdNormal),
          ),
        ],
      ),
    );
  }
}
