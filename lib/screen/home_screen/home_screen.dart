import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/interlization/interlization.dart';

import '../../helper/custom_widgets/custom_text_widget.dart';
import '../../utils/router.dart';
import '../certificate_screen/screen.dart';
import 'compents/skills_sets_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: PopupMenuButton(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: TextButton(
                          child: Text(
                            LocalName.porjects.tr,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            Get.toNamed(PageRouter().project);
                          }),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          LocalName.certificates.tr,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      onTap: () {
                        Get.to(CertificateScreen());
                      },
                      value: 2,
                    ),
                    PopupMenuItem(
                      child: TextButton(
                          child: Text(
                            LocalName.aboutMe.tr,
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Get.toNamed(PageRouter().about);
                          }),
                      value: 3,
                    ),
                    PopupMenuItem(child: Text(LocalName.certificates.tr))
                  ]),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(
                  'images/assets/profile.png',
                ),
              ),
            ),
            CustomTextWidget(
              color: Colors.white,
              text: LocalName.name.tr,
              fontSize: 30,
            ),
            CustomTextWidget(
                color: Colors.white,
                fontSize: 20,
                text: LocalName.flutterDeveloper.tr),
            SkillSetWidget()
          ],
        ),
      ),
    );
  }
}
