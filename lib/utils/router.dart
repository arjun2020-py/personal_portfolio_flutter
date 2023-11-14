import 'package:flutter/material.dart';
import 'package:portfolio/screen/about_screen/about_screen.dart';
import 'package:portfolio/screen/project_screen/project_screen.dart';

import '../screen/home_screen/home_screen.dart';

class PageRouter {
  String home = 'home';
  String project = 'project';
  String about = 'about';
}

Map<String, Widget Function(BuildContext)> poftfolioRouter = {
  PageRouter().home: (context) => HomeScreen(),
  PageRouter().project: (context) => ProjectScreen(),
  PageRouter().about : (context) => AboutScreen() 
};
