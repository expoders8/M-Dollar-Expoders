import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../app/ui/PaymentSuccess/success_payment.dart';

class PaymentSuccsesGif extends StatefulWidget {
  const PaymentSuccsesGif({super.key});

  @override
  State<PaymentSuccsesGif> createState() => _PaymentSuccsesGifState();
}

class _PaymentSuccsesGifState extends State<PaymentSuccsesGif>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const SuccessPaymentPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Center(
          child: Lottie.asset(
            'assets/paymentDoneGif.json',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
