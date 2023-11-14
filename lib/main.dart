import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/interlization/interlization.dart';
import 'package:portfolio/screen/home_screen/home_screen.dart';

import 'utils/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Internationalization(),
      locale:Locale('en','US'),
      fallbackLocale: Locale('en','US'),
      debugShowCheckedModeBanner: false,
      initialRoute: PageRouter().home,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      routes: poftfolioRouter,
    );
  }
}
