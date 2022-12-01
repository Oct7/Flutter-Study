import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_study/main_page/main_page_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MainPage extends GetView<MainPageController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: null,
        body: ListView.builder(
          itemCount: controller.routes.length,
          itemBuilder: ((context, index) => controller.mainPageCell(
                pageRoute: controller.routes[index],
              )),
        ),
      ),
    );
  }
}
