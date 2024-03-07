import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdollerapp/app/ui/UserPayment/money_send.dart';

import '../../../config/constant/color_constant.dart';
import '../../../config/constant/font_constant.dart';

class UserPaymentPage extends StatefulWidget {
  final String userName;
  final String userImage;
  final String userNumber;
  const UserPaymentPage(
      {super.key,
      required this.userName,
      required this.userImage,
      required this.userNumber});

  @override
  State<UserPaymentPage> createState() => _UserPaymentPageState();
}

class _UserPaymentPageState extends State<UserPaymentPage> {
  final TextEditingController msgController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBackGround1Color,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: GestureDetector(
              child: Image.asset(
                "assets/icons/vartical-dots.png",
                scale: 1.6,
              ),
            ),
          ),
        ],
        leadingWidth: 45,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Image.asset(
              "assets/icons/arrow-left.png",
              scale: 1.6,
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 38,
              width: 38,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              child: Image.asset(
                widget.userImage,
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.userName,
                  style: const TextStyle(
                      color: kPrimaryColor,
                      fontSize: 16,
                      fontFamily: kCircularStdBold),
                ),
                const Text(
                  "Last seen 10:20:00 AM",
                  style: TextStyle(
                      color: kTextSecondaryColor,
                      fontSize: 12,
                      fontFamily: kCircularStdMedium),
                ),
              ],
            ),
          ],
        ),
        toolbarHeight: 50,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: kDividerColor,
            height: 1.0,
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
          child: Column(
            children: [
              Container(
                height: Get.height - 140,
                width: Get.width,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0, top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 35),
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25)),
                              child: Image.asset(
                                widget.userImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              "Send money to",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 24,
                                  fontFamily: kCircularStdNormal),
                            ),
                            Text(
                              widget.userName,
                              style: const TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 24,
                                  fontFamily: kCircularStdBold),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "M-pesa Pin",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 12,
                                  fontFamily: kCircularStdNormal),
                            ),
                            Text(
                              widget.userNumber,
                              style: const TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 15,
                                  fontFamily: kCircularStdBold),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "Joined by 23rd Mar 2024",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 12,
                                  fontFamily: kCircularStdNormal),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: Get.width / 2.5,
                            height: 50,
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: const Center(
                              child: Text(
                                "Pay  -",
                                style: TextStyle(
                                    color: kWhiteColor,
                                    fontSize: 15,
                                    fontFamily: kCircularStdMedium),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: Get.width / 2.5,
                            height: 50,
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                    color: kPrimaryColor, width: 0.8)),
                            child: const Center(
                              child: Text(
                                "Request  +",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 15,
                                    fontFamily: kCircularStdMedium),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                width: Get.width,
                height: 50,
                child: TextFormField(
                  controller: msgController,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  minLines: 1,
                  cursorColor: kPrimaryColor,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: kWhiteColor,
                    hintText: "Message",
                    hintStyle: const TextStyle(color: kPrimaryColor),
                    contentPadding: const EdgeInsets.fromLTRB(15, 15, 25, 0),
                    suffixIcon: IconButton(
                      icon: Image.asset(
                        "assets/icons/sendIcon.png",
                        scale: 1.5,
                        fit: BoxFit.cover,
                      ),
                      onPressed: () async {
                        Get.to(() => MoneySendPage(
                              userImage: widget.userImage,
                              userName: widget.userName,
                              userNumber: widget.userNumber,
                              money: msgController.text,
                            ));
                      },
                    ),
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
