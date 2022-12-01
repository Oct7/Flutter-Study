import 'package:flutter/material.dart';
import 'package:flutter_study/main_page/main_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(FlutterStudyApp());
}

class FlutterStudyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => MainPage(),
        ),
      ],
    );
  }
}
