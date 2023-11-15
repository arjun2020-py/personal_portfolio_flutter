import 'package:get/get.dart';
import 'package:portfolio/helper/custom_images/custom_images.dart';
import 'package:portfolio/interlization/interlization.dart';

import 'model/model.dart';

class HomeController extends GetxController {
  RxList<SkillSet> skillList = <SkillSet>[
    SkillSet(LocalName.flutter.tr, CustomImages().flutter),
    SkillSet(LocalName.dart.tr, CustomImages().dart),
    SkillSet(LocalName.restApi.tr, CustomImages().restApi),
    SkillSet(LocalName.hive, CustomImages().hive),
    SkillSet(LocalName.swagierApi.tr, CustomImages().swagier),
    SkillSet(
      LocalName.git.tr,
      CustomImages().git,
    ),
    SkillSet(LocalName.getx.tr, CustomImages().getx),
    SkillSet(LocalName.mvc, CustomImages().mvc),
    SkillSet(LocalName.xcode.tr, CustomImages().xcode),
    SkillSet(LocalName.iOS.tr, CustomImages().ios),
    SkillSet(LocalName.cProgramming.tr, CustomImages().c),
    SkillSet(LocalName.html.tr, CustomImages().html),
    SkillSet(LocalName.css.tr, CustomImages().css),
    SkillSet(LocalName.javascript.tr, CustomImages().javascript),
    SkillSet(LocalName.firebase.tr, CustomImages().firebase),
    SkillSet(LocalName.sQLite.tr, CustomImages().sqflite)
  ].obs;
}
