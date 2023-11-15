import 'package:get/get.dart';
import 'package:portfolio/helper/custom_link/custom_link.dart';
import 'package:portfolio/interlization/interlization.dart';
import 'package:portfolio/screen/project_screen/model/model.dart';

class ProjectController extends GetxController {
  RxList<ProjectModel> projectModel = <ProjectModel>[
    ProjectModel(
        domain: LocalName.flutter.tr,
        projectName: LocalName.personalPortfolioFlutter.tr,
        decrption: '',
        link: CustomLink().personalPortfolioFlutter),
    ProjectModel(
        domain: LocalName.flutter.tr,
        projectName: LocalName.onlineFoodDeliveryApp.tr,
        decrption: '',
        link: CustomLink().onlineFoodDeliveryApp),
    ProjectModel(
        domain: LocalName.flutter.tr,
        projectName: LocalName.nexterpsaloon.tr,
        decrption: '',
        link: CustomLink().nexterpsaloon),
    ProjectModel(
        domain: LocalName.flutter.tr,
        projectName: LocalName.ajcjewelProject.tr,
        decrption: '',
        link: CustomLink().ajcjewelproject),
    ProjectModel(
        domain: LocalName.flutter.tr,
        projectName: LocalName.eShopeee.tr,
        decrption: '',
        link: CustomLink().eshopeee),
    ProjectModel(
        domain: LocalName.flutter.tr,
        projectName: LocalName.moovbeBusTicketBookingApp.tr,
        decrption: '',
        link: CustomLink().movieTickBookingApp),
    ProjectModel(
        domain: LocalName.flutter.tr,
        projectName: LocalName.campusPlacmentManagment.tr,
        decrption: '',
        link: CustomLink().campusPlacmentManagment),
    ProjectModel(
        domain: LocalName.flutter.tr,
        projectName: LocalName.ecommerceFlutterApp.tr,
        decrption: '',
        link: CustomLink().ecommerceFlutterApp),
    ProjectModel(
        domain: LocalName.flutter.tr,
        projectName: LocalName.telegramCloneFlutter.tr,
        decrption: '',
        link: CustomLink().telegramCloneFlutter),
    ProjectModel(
        domain: LocalName.flutter.tr,
        projectName: LocalName.friutApp.tr,
        decrption: '',
        link: CustomLink().friutApp),
    ProjectModel(
        domain: LocalName.flutter.tr,
        projectName: LocalName.flutterWhatsappColne.tr,
        decrption: '',
        link: CustomLink().flutterWhatsappColne),
    ProjectModel(
        domain: LocalName.flutter.tr,
        projectName: LocalName.calaulatorAppInFlutter.tr,
        decrption: '',
        link: CustomLink().calaulatorAppInFlutter),
    ProjectModel(
        domain: LocalName.html.tr,
        projectName: LocalName.childSafitySolution1.tr,
        decrption: '',
        link: CustomLink().childSafitySolution1),
    ProjectModel(
        domain: LocalName.html.tr,
        projectName: LocalName.ethicalHackingClub.tr,
        decrption: '',
        link: CustomLink().ethicalHackingClub)
  ].obs;
}
