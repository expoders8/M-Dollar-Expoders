import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';
import '../PaymentSuccess/success_payment.dart';

class UserChatPage extends StatefulWidget {
  const UserChatPage({
    super.key,
  });

  @override
  State<UserChatPage> createState() => _UserChatPageState();
}

enum SampleItem { getHelp, sendFeedback }

class _UserChatPageState extends State<UserChatPage> {
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
                "assets/icons/arrow-left.png",
                scale: 1.6,
              ),
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
                "assets/icons/t7.png",
              ),
            ),
            const SizedBox(width: 15),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Liach Grao",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 16,
                      fontFamily: kCircularStdBold),
                ),
                Text(
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
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                height: Get.height - 140,
                width: Get.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(13)),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const SizedBox(height: 5),
                                    const Text(
                                      "Payment to Liach Grao",
                                      style: TextStyle(
                                          color: kTextSecondaryColor,
                                          fontSize: 14,
                                          fontFamily: kCircularStdNormal),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text(
                                      "\$1599",
                                      style: TextStyle(
                                          color: Color(0xFFDFDFD7),
                                          fontSize: 28,
                                          fontFamily: kCircularStdBold),
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset(
                                          "assets/icons/paymentSuccses.png",
                                          scale: 2,
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          "Paid by 23rd Mar 2024",
                                          style: TextStyle(
                                              color: kTextSecondaryColor,
                                              fontSize: 14,
                                              fontFamily: kCircularStdNormal),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 7, vertical: 3),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                              color: kWhiteColor, width: 0.3)),
                                      child: const Text(
                                        "Receipt >",
                                        style: TextStyle(
                                            color: kTextSecondaryColor,
                                            fontSize: 14,
                                            fontFamily: kCircularStdMedium),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10.0, top: 5.0),
                              child: Text(
                                "4:30pm",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 12,
                                    fontFamily: kCircularStdMedium),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25)),
                          child: Image.asset(
                            "assets/icons/t1.png",
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25)),
                          child: Image.asset(
                            "assets/icons/t7.png",
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 14),
                              decoration: BoxDecoration(
                                color: kWhiteColor,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: const Text(
                                "Thank You so much",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 14,
                                    fontFamily: kCircularStdMedium),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0, top: 5.0),
                              child: Text(
                                "4:30pm",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 12,
                                    fontFamily: kCircularStdMedium),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25)),
                          child: Image.asset(
                            "assets/icons/t7.png",
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  borderRadius: BorderRadius.circular(13)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 5),
                                    const Text(
                                      "Payment to Amelia",
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 14,
                                          fontFamily: kCircularStdMedium),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text(
                                      "\$45",
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 28,
                                          fontFamily: kCircularStdBold),
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          "assets/icons/paymentFaild.png",
                                          scale: 2,
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          "Paid by 23rd Mar 2024",
                                          style: TextStyle(
                                              color: kPrimaryColor,
                                              fontSize: 14,
                                              fontFamily: kCircularStdNormal),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 7, vertical: 3),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                              color: kPrimaryColor,
                                              width: 0.3)),
                                      child: const Text(
                                        "Receipt >",
                                        style: TextStyle(
                                            color: kPrimaryColor,
                                            fontSize: 12,
                                            fontFamily: kCircularStdMedium),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text(
                                      "-----------------------",
                                      style: TextStyle(
                                          color: kDividerColor,
                                          letterSpacing: 4,
                                          fontFamily: kCircularStdNormal),
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        const Text(
                                          "Insufficient balance \nrejected by bank",
                                          style: TextStyle(
                                              color: kTextSecondaryColor,
                                              fontSize: 12,
                                              fontFamily: kCircularStdMedium),
                                        ),
                                        const SizedBox(width: 10),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 7, vertical: 3),
                                          decoration: BoxDecoration(
                                            color: kGreenColor,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: const Text(
                                            "Check",
                                            style: TextStyle(
                                                color: kWhiteColor,
                                                fontSize: 12,
                                                fontFamily: kCircularStdMedium),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10.0, top: 5.0),
                              child: Text(
                                "4:30pm",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 12,
                                    fontFamily: kCircularStdMedium),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),
                  ],
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
                        Get.to(const SuccessPaymentPage());
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
