import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';

class UserChatPage extends StatefulWidget {
  const UserChatPage({
    super.key,
  });

  @override
  State<UserChatPage> createState() => _UserChatPageState();
}

class _UserChatPageState extends State<UserChatPage> {
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
            children: [
              SizedBox(
                height: Get.height - 140,
                width: Get.width,
                child: const Center(child: Text("Msg")),
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
                        // Get.to(MoneySendPage(
                        //   userImage: widget.userImage,
                        //   userName: widget.userName,
                        //   userNumber: widget.userNumber,
                        //   money: msgController.text,
                        // ));
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
