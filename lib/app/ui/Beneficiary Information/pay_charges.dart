import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../models/purpose_list_model.dart';
import '../PaymentSuccess/success_payment.dart';
import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';

class PayChargesPage extends StatefulWidget {
  const PayChargesPage({super.key});

  @override
  State<PayChargesPage> createState() => _PayChargesPageState();
}

class _PayChargesPageState extends State<PayChargesPage> {
  bool isFormSubmitted = false;
  final TextEditingController searchController = TextEditingController();
  List<PurposeListModel> purposeListModel = [
    PurposeListModel(
      purposeTital: "Credit to NRE in INR",
      transferCode: "Arya Patel",
    ),
    PurposeListModel(
      purposeTital: "Payment to hotel",
      transferCode: "Hanna Wilson",
    ),
    PurposeListModel(
      purposeTital: "Payment for medical treatment",
      transferCode: "Vincent Chepkwony",
    ),
    PurposeListModel(
      purposeTital: "Payment to LIC, UTI and PostMaster",
      transferCode: "Jonthan Thoms",
    ),
    PurposeListModel(
      purposeTital: "Payment for investments in shares ",
      transferCode: "Nicholas Smith",
    ),
    PurposeListModel(
      purposeTital: "Family expenses",
      transferCode: "Alexander Davisn",
    ),
    PurposeListModel(
      purposeTital: "Payment to travel agent",
      transferCode: "Michael Jons",
    ),
    PurposeListModel(
      purposeTital: "Other",
      transferCode: "Michael Jons",
    ),
    PurposeListModel(
      purposeTital: "Payment to Housing Society",
      transferCode: "Michael Jons",
    ),
  ];
  String getInitials(String fullName) {
    List<String> names = fullName.split(" ");
    String initials = names[0].substring(0, 1);

    return initials;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBackGround1Color,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 8, 0, 8),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11), color: kWhiteColor),
              height: 20,
              width: 20,
              child: Image.asset(
                'assets/icons/arrow-left-outline.png',
                scale: 1.2,
              ),
            ),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Who will pay",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 27,
                      fontFamily: kCircularStdBook),
                ),
                const Text(
                  "Chaeges",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 27,
                      fontFamily: kCircularStdBold),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: searchController,
                  decoration: const InputDecoration(
                    labelText: 'Search',
                    labelStyle: TextStyle(color: kPrimaryColor),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFADAEAC),
                        width: 1,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFADAEAC),
                        width: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: Get.height - 200,
                  width: Get.width,
                  child: ListView.builder(
                    padding:
                        const EdgeInsets.only(left: 5, top: 12, bottom: 50),
                    itemCount: purposeListModel.length,
                    itemBuilder: (context, index) {
                      var transactionData = purposeListModel[index];
                      String capitalized =
                          getInitials(transactionData.purposeTital);
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => const SuccessPaymentPage());
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(6, 0, 6, 25),
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: kWhiteColor, width: 1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(child: Text(capitalized)),
                              ),
                              const SizedBox(width: 13),
                              SizedBox(
                                width: Get.width - 111,
                                child: Text(
                                  transactionData.purposeTital,
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: Get.width > 500 ? 20 : 17,
                                      fontFamily: kCircularStdBold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
