import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/helper/custom_images/custom_images.dart';
import 'package:portfolio/helper/custom_widgets/custom_text_widget.dart';
import 'package:portfolio/interlization/interlization.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

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
              fontSize: 20, text: LocalName.porjects.tr, color: Colors.white)),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: SizedBox(
              width: 300,
              height: 200,
              child: Card(
                color: Color(0xff252525),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(
                        fontSize: 20,
                        text: 'project name',
                        color: Colors.white),
                    CustomTextWidget(
                        fontSize: 15, text: 'Decrption', color: Colors.white),
                    Row(
                      children: [
                        Image.asset(
                          CustomImages().git,
                          width: 30,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
