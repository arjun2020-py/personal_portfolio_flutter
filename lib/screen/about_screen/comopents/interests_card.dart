import 'package:flutter/material.dart';

import '../../../helper/custom_widgets/custom_text_widget.dart';

class interestsCardWidget extends StatelessWidget {
  const interestsCardWidget({
    super.key,
    required  this.text
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 60,
      child: Card(
          child: Center(
        child: CustomTextWidget(
            fontSize: 15, text: text, color: Colors.black),
      )),
    );
  }
}
