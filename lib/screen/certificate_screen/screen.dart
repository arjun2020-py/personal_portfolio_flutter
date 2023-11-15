import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helper/custom_widgets/custom_text_widget.dart';
import '../../interlization/interlization.dart';
import 'compoents/card_widget.dart';

class CertificateScreen extends StatelessWidget {
  const CertificateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Color(0xff252525),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              )),
          title: CustomTextWidget(
              fontSize: 20,
              text: LocalName.certificates.tr,
              color: Colors.white)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomCardWidget(
            text: LocalName.iosCertficate.tr,
          ),
          CustomCardWidget(text: LocalName.flutterCertficate.tr)
        ],
      ),
    );
  }
}
