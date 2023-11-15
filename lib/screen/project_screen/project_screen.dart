import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/helper/custom_images/custom_images.dart';
import 'package:portfolio/helper/custom_widgets/custom_text_widget.dart';
import 'package:portfolio/interlization/interlization.dart';

import 'project_controller.dart';

class ProjectScreen extends StatelessWidget {
  ProjectScreen({super.key});
  final projectController = Get.put(ProjectController());
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
        itemCount: projectController.projectModel.length,
        itemBuilder: (BuildContext context, int index) {
          var data = projectController.projectModel[index];
          return Center(
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.95,
              height: MediaQuery.sizeOf(context).height * 0.24,
              child: Card(
                color: Color(0xff252525),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextWidget(
                        fontSize: 20, text: data.domain, color: Colors.white),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextWidget(
                        fontSize: 18,
                        text: data.projectName,
                        color: Colors.white),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      CustomImages().git,
                      width: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextWidget(
                        fontSize: 12, text: data.link, color: Colors.white),
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
