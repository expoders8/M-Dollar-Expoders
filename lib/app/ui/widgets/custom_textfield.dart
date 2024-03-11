import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/constant/color_constant.dart';
import '../../../config/constant/font_constant.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? ctrl;
  final String? hintText;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final String? name;
  final String? validationMsg;
  final int? maxLines;
  final bool formSubmitted;

  const CustomTextFormField(
      {Key? key,
      this.ctrl,
      this.hintText,
      this.keyboardType,
      this.prefixIcon,
      this.maxLines,
      this.formSubmitted = false,
      this.name,
      this.validationMsg})
      : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isTouched = false;
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  validateInput(value) {
    if (isTouched || widget.formSubmitted) {
      if (value != null && value?.toString() != '') {
        if (widget.name == 'accountno') {
          if (value.isEmpty) {
            return widget.validationMsg;
          } else if (value.length < 6 || value.length > 34) {
            return "Min 6 and max 34 characters,no special characters";
          } else if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value)) {
            return 'Special characters are not allowed.';
          }
        }
        if (widget.name == 'swiftcode') {
          if (value.isEmpty) {
            return widget.validationMsg;
          } else if (value.length < 8 || value.length > 11) {
            return "Min 8 and max 11 characters,no special characters";
          } else if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value)) {
            return 'Special characters are not allowed.';
          }
        }
        // if (widget.name == 'email') {
        //   if (value.isEmpty) {
        //     widget.validationMsg;
        //   } else {
        //     const pattern =
        //         r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9]+\.[a-zA-Z0-9-.]+$)';
        //     final regExp = RegExp(pattern);

        //     if (!regExp.hasMatch(value.toString())) {
        //       return "Please enter valid email";
        //     }
        //   }
        // }
        // if (widget.name == "password") {
        //   if (value.isEmpty) {
        //     widget.validationMsg;
        //   }
        // }
        return null;
      }
      return widget.validationMsg;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: kPrimaryColor, fontSize: 15),
      controller: widget.ctrl,
      keyboardType: widget.keyboardType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        return validateInput(value);
      },
      obscureText: widget.name == "password" ? !_passwordVisible : false,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        hintText: widget.hintText,
        filled: true,
        fillColor: kWhiteColor,
        contentPadding:
            EdgeInsets.fromLTRB(widget.prefixIcon == null ? 16 : 38, 0, 10, 0),
        hintStyle: const TextStyle(color: kGreyColor),
        labelStyle: const TextStyle(color: kBlackColor),
        prefixIcon: widget.name == "pin"
            ? const Padding(
                padding: EdgeInsets.only(top: 14.0, left: 10),
                child: Text("Pin -"),
              )
            : widget.prefixIcon,
        prefixStyle: const TextStyle(),
        suffixIcon: widget.name == "password"
            ? IconButton(
                splashColor: kTransparentColor,
                highlightColor: kTransparentColor,
                icon: Icon(
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: kPrimaryColor,
                  size: 18,
                ),
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              )
            : widget.name == "amount"
                ? GestureDetector(
                    onTap: () {
                      bottomSheetforCurrency();
                    },
                    child: Container(
                      width: 95,
                      decoration: const BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/icons/contry1.png",
                            width: 40,
                            scale: 5,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Text(
                              "INR",
                              style: TextStyle(
                                  color: kDividerColor,
                                  fontSize: 15,
                                  fontFamily: kCircularStdNormal),
                            ),
                          ),
                          Image.asset(
                            "assets/icons/arrow-bottom-outline.png",
                            color: kDividerColor,
                            scale: 1.6,
                          ),
                        ],
                      ),
                    ),
                  )
                : widget.name == "pin"
                    ? GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 50,
                          decoration: const BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: Image.asset(
                            "assets/icons/sendIcon.png",
                            scale: 1.5,
                            color: kWhiteColor,
                          ),
                        ),
                      )
                    : null,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kWhiteColor,
          ),
          borderRadius: BorderRadius.circular(7),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kPrimaryColor,
          ),
          borderRadius: BorderRadius.circular(7),
        ),
        errorStyle: const TextStyle(color: kPrimaryColor),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kWhiteColor,
          ),
          borderRadius: BorderRadius.circular(7),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kWhiteColor,
          ),
          borderRadius: BorderRadius.circular(7),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kPrimaryColor,
          ),
          borderRadius: BorderRadius.circular(7),
        ),
      ),
      maxLines: widget.maxLines,
      onChanged: (value) => {
        isTouched = true,
      },
    );
  }

  bottomSheetforCurrency() {
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
                height: 330,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Currency",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 22,
                            fontFamily: kCircularStdMedium),
                      ),
                      const SizedBox(height: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildMultipalCurrencyWidget(
                              "INR", "assets/icons/contry1.png"),
                          const SizedBox(width: 34),
                          buildMultipalCurrencyWidget(
                              "Pound", "assets/icons/contry2.png"),
                          const SizedBox(width: 34),
                          buildMultipalCurrencyWidget(
                              "Dollar", "assets/icons/contry3.png"),
                          const SizedBox(width: 34),
                          buildMultipalCurrencyWidget(
                              "Dollar", "assets/icons/contry4.png"),
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

  buildMultipalCurrencyWidget(String code, String image) {
    return Padding(
      padding: const EdgeInsets.only(right: 60.0),
      child: GestureDetector(
        onTap: () {
          Get.back();
          // Get.toNamed(Routes.internationalTransferPage);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 60,
              scale: 2,
            ),
            Text(
              code,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: kPrimaryColor,
                  fontSize: 14,
                  fontFamily: kCircularStdMedium),
            ),
          ],
        ),
      ),
    );
  }
}
