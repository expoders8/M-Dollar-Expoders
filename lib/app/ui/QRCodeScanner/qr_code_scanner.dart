import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdollerapp/config/constant/color_constant.dart';
import 'package:mdollerapp/config/constant/font_constant.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../config/provider/imagepicker_provider.dart';
import '../UserPayment/money_send.dart';

class QRCodeScannerPage extends StatefulWidget {
  const QRCodeScannerPage({super.key});

  @override
  State<QRCodeScannerPage> createState() => _QRCodeScannerPageState();
}

class _QRCodeScannerPageState extends State<QRCodeScannerPage> {
  final qrKey = GlobalKey(debugLabel: 'QR');
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: Text("Scan the QR code"),
      // ),
      body: Stack(
        children: [
          SizedBox(
            width: Get.width,
            height: Get.height,
            child: QRView(
              key: qrKey,
              onQRViewCreated: onQRViewCreated,
              overlay: QrScannerOverlayShape(
                  borderColor: kWhiteColor,
                  borderRadius: 14,
                  borderLength: 20,
                  borderWidth: 5,
                  cutOutHeight: 260,
                  cutOutWidth: 260),
            ),
          ),
          Positioned(
            child: SafeArea(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Image.asset(
                          "assets/icons/cancel.png",
                          color: kWhiteColor,
                          scale: 1.8,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Text(
                          "Scan the QR code",
                          style: TextStyle(
                              color: kWhiteColor,
                              fontFamily: kCircularStdMedium,
                              fontSize: 15),
                        ),
                      ),
                      Image.asset(
                        "assets/icons/vartical-dots.png",
                        scale: 1.8,
                        color: kWhiteColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text(
                      "Hover ove the QR code you want to scan",
                      style: TextStyle(
                          color: kWhiteColor,
                          fontSize: 13,
                          fontFamily: kCircularStdNormal),
                    ),
                  ),
                ],
              ),
            )),
          ),
          Positioned(
            bottom: 180,
            left: Get.width / 3.6,
            child: GestureDetector(
              onTap: () {
                pickImage();
              },
              child: Image.asset(
                "assets/icons/uploadGallary.png",
                scale: 1.9,
              ),
            ),
          )
        ],
      ),
    );
  }

  Future pickImage() async {
    await PickerUtils.pickImageFromGallery().then((pickedFile) async {
      if (pickedFile == null) return;
      setState(() {
        imageFile = File(pickedFile.path);
      });
    });
  }

  void onQRViewCreated(QRViewController controller) {
    controller.scannedDataStream.listen(
      (scanData) {
        controller.dispose();
        Get.to(() => const MoneySendPage());
      },
    );
  }
}
