import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdollerapp/config/constant/color_constant.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRCodeScannerPage extends StatefulWidget {
  const QRCodeScannerPage({super.key});

  @override
  State<QRCodeScannerPage> createState() => _QRCodeScannerPageState();
}

class _QRCodeScannerPageState extends State<QRCodeScannerPage> {
  final qrKey = GlobalKey(debugLabel: 'QR');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Scan the QR code"),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Color.fromARGB(169, 0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: Get.width,
                  height: Get.height - 85,
                  child: QRView(
                    key: qrKey,
                    onQRViewCreated: onQRViewCreated,
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(13.0),
                //   child: Container(
                //     decoration: BoxDecoration(
                //         color: kWhiteColor,
                //         borderRadius: BorderRadius.circular(8)),
                //     width: 250,
                //     height: 250,
                //   ),
                // ),
                // Positioned(
                //     child: Image.asset(
                //   "assets/icons/qrcode-top-left.png",
                //   scale: 3,
                // )),
                // Positioned(
                //     right: 0,
                //     child: Image.asset(
                //       "assets/icons/qrcode-top-right.png",
                //       scale: 3,
                //     )),
                // Positioned(
                //     bottom: 0,
                //     child: Image.asset(
                //       "assets/icons/qrcode-bottom-left.png",
                //       scale: 3,
                //     )),
                // Positioned(
                //     bottom: 0,
                //     right: 0,
                //     child: Image.asset(
                //       "assets/icons/qrcode-bottom-right.png",
                //       scale: 3,
                //     ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  void onQRViewCreated(QRViewController controller) {
    controller.scannedDataStream.listen(
      (scanData) {
        controller.dispose();
        Navigator.pop(context, scanData.code);
      },
    );
  }
}
