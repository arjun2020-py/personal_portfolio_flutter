import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helper/custom_widgets/custom_text_widget.dart';
import '../../../interlization/interlization.dart';
import '../home_controller.dart';

class SkillSetWidget extends StatelessWidget {
  SkillSetWidget({
    super.key,
  });
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        ),
        height: 450,
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30),
              child: CustomTextWidget(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                  text: LocalName.skillSet.tr),
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: homeController.skillList.length,
                itemBuilder: (BuildContext context, int index) {
                  var data = homeController.skillList[index];
                  return Card(
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Image.asset(
                            data.image,
                            height: 80,
                          ),
                        ),
                        CustomTextWidget(
                            fontSize: 15, text: data.text, color: Colors.white)
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
