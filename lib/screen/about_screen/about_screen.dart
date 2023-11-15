import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/helper/custom_widgets/custom_text_widget.dart';
import 'package:portfolio/interlization/interlization.dart';

import 'comopents/interests_card.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(
                  'images/assets/profile.png',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextWidget(
                fontSize: 20, text: 'Hello I am', color: Colors.white),
            CustomTextWidget(
                fontSize: 25, text: LocalName.name.tr, color: Colors.white),
            CustomTextWidget(
                fontSize: 18,
                text: LocalName.flutterDeveloper.tr,
                color: Colors.white),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextWidget(
                  fontSize: 12, text: LocalName.decrption, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextWidget(
                fontSize: 18,
                text: LocalName.languages.tr,
                color: Colors.white),
            Row(
              children: [
                SizedBox(
                  width: 80,
                ),
                CustomTextWidget(
                    fontSize: 15, text: 'Malaylam', color: Colors.white),
                Spacer(),
                CustomTextWidget(
                    fontSize: 15, text: 'English', color: Colors.white),
                SizedBox(
                  width: 80,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextWidget(
                fontSize: 18,
                text: LocalName.interests.tr,
                color: Colors.white),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                interestsCardWidget(
                  text: LocalName.cricket.tr,
                ),
                interestsCardWidget(text: LocalName.watchingMovie.tr),
                interestsCardWidget(text: LocalName.youTube.tr)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                LocalName.hireMe.tr,
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
