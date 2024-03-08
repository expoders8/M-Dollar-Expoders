import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdollerapp/app/ui/UserPayment/chat_screen.dart';

import '../../../config/constant/color_constant.dart';
import '../../../config/constant/font_constant.dart';

class MoneySendPage extends StatefulWidget {
  final String userName;
  final String userImage;
  final String userNumber;
  final String money;
  const MoneySendPage(
      {super.key,
      required this.userName,
      required this.userImage,
      required this.userNumber,
      required this.money});
  @override
  State<MoneySendPage> createState() => _MoneySendPageState();
}

class _MoneySendPageState extends State<MoneySendPage> {
  final TextEditingController msgController = TextEditingController();
  SampleItem? selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBackGround1Color,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: PopupMenuButton<SampleItem>(
              position: PopupMenuPosition.under,
              color: kWhiteColor,
              icon: Image.asset(
                "assets/icons/vartical-dots.png",
                scale: 1.6,
              ),
              initialValue: selectedItem,
              onSelected: (SampleItem item) {
                setState(() {
                  selectedItem = item;
                });
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<SampleItem>>[
                PopupMenuItem<SampleItem>(
                  height: 35,
                  value: SampleItem.getHelp,
                  child: SizedBox(
                    width: 122,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/help.png",
                          scale: 1.2,
                        ),
                        const SizedBox(width: 10),
                        const Text('Get Help'),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem<SampleItem>(
                  height: 35,
                  value: SampleItem.sendFeedback,
                  child: SizedBox(
                    width: 122,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/feedback.png",
                          scale: 1.2,
                        ),
                        const SizedBox(width: 10),
                        const Text('Send feedback'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        leadingWidth: 45,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: GestureDetector(
              child: Image.asset(
                "assets/icons/cancel.png",
                scale: 1.6,
              ),
            ),
          ),
        ),
        toolbarHeight: 50,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25)),
                child: Image.asset(
                  widget.userImage,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 35),
              const Text(
                "Send money to",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 22,
                    fontFamily: kCircularStdNormal),
              ),
              Text(
                widget.userName,
                style: const TextStyle(
                    color: kPrimaryColor,
                    fontSize: 22,
                    fontFamily: kCircularStdBold),
              ),
              Text(
                widget.userNumber,
                style: const TextStyle(
                    color: kPrimaryColor,
                    fontSize: 13,
                    fontFamily: kCircularStdMedium),
              ),
              const SizedBox(height: 80),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                width: Get.width - 100,
                child: TextFormField(
                  style: const TextStyle(
                    fontSize: 35,
                    fontFamily: kCircularStdBold,
                  ),
                  controller: msgController,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.number,
                  cursorColor: kPrimaryColor,
                  onChanged: (value) {},
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFFDF8F6),
                    hintText: "",
                    hintStyle: const TextStyle(color: kPrimaryColor),
                    // contentPadding: const EdgeInsets.fromLTRB(60, 50, 60, 0),
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
              const SizedBox(height: 35),
              Container(
                width: Get.width - 220,
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 10),
                    Image.asset(
                      "assets/icons/massage.png",
                      scale: 1.4,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Add Note",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 13,
                          fontFamily: kCircularStdMedium),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 90),
              GestureDetector(
                onTap: () {
                  Get.to(() => const UserChatPage());
                },
                child: Container(
                  width: Get.width - 190,
                  height: 50,
                  decoration: BoxDecoration(
                      color: kButtonColor,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Pay",
                        style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 15,
                            fontFamily: kCircularStdMedium),
                      ),
                      const SizedBox(width: 10),
                      Image.asset(
                        "assets/icons/sendIcon.png",
                        scale: 1.4,
                        color: kWhiteColor,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 70),
            ],
          ),
        ),
      ),
    );
  }
}
