import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helper/custom_widgets/custom_text_widget.dart';
import '../../../interlization/interlization.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    super.key,
    required  this.text
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.2,
        width: MediaQuery.sizeOf(context).width * 0.9,
        child: Card(
          color: Color(0xff252525),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextWidget(
                  fontSize: 15,
                  text: text,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
