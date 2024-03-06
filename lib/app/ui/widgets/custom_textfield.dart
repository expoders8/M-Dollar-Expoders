import 'package:flutter/material.dart';

import '../../../config/constant/color_constant.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? ctrl;
  final String? hintText;
  final TextInputType? keyboardType;
  final String? prefixIcon;
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

  @override
  void initState() {
    super.initState();
  }

  validateInput(value) {
    if (isTouched || widget.formSubmitted) {
      if (value != null && value?.toString() != '') {
        if (widget.name == 'email') {
          if (value.isEmpty) {
            widget.validationMsg;
          } else {
            const pattern =
                r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9]+\.[a-zA-Z0-9-.]+$)';
            final regExp = RegExp(pattern);

            if (!regExp.hasMatch(value.toString())) {
              return "Please enter valid email";
            }
          }
        }
        if (widget.name == "phoneNo") {
          if (value.isEmpty) {
            return widget.validationMsg;
          } else if (value.length < 9 || value.length > 10) {
            return 'M-pesa pin should be 10 digits';
          }
        }
        if (widget.name == "password") {
          if (value.isEmpty) {
            widget.validationMsg;
          }
        }
        return null;
      }
      return widget.validationMsg;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.ctrl,
      keyboardType: widget.keyboardType,
      // style: TextStyle(
      //   height: 5,
      // ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        return validateInput(value);
      },
      decoration: InputDecoration(
        hintText: widget.hintText,
        filled: true,
        fillColor: kWhiteColor,
        contentPadding: const EdgeInsets.fromLTRB(15, 15, 25, 0),
        hintStyle: const TextStyle(color: kGreyColor),
        labelStyle: const TextStyle(color: kBlackColor),
        prefixIcon: widget.prefixIcon != null
            ? Container(
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: Image.asset(
                  widget.prefixIcon.toString(),
                  color: kWhiteColor,
                  height: 20,
                  width: 20,
                  scale: 1.6,
                ),
              )
            : null,
        // suffixIcon: widget.name == "password"
        //     ? IconButton(
        //         splashColor: kTransparentColor,
        //         highlightColor: kTransparentColor,
        //         icon: Icon(
        //           _passwordVisible ? Icons.visibility : Icons.visibility_off,
        //           color: kPrimaryColor,
        //           size: 18,
        //         ),
        //         onPressed: () {
        //           setState(() {
        //             _passwordVisible = !_passwordVisible;
        //           });
        //         },
        //       )
        //     : null,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(9.0),
          ),
          borderSide: BorderSide(color: kBorderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9.0),
          borderSide: const BorderSide(color: kBorderColor, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9.0),
          borderSide: const BorderSide(color: kBorderColor),
        ),
      ),
      maxLines: widget.maxLines,
      onChanged: (value) => {
        isTouched = true,
      },
    );
  }
}
