import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPageController extends GetxController {
  List<PageRoute> routes = [
    PageRoute(route: '/', title: '메인페이지'),
  ];
  Widget mainPageCell({required PageRoute pageRoute}) {
    return GestureDetector(
      onTap: () {
        if (pageRoute.route == '/') {
          print('여기가 메인페이지입니다.');
        } else {
          Get.toNamed(pageRoute.route);
        }
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.grey.withOpacity(0.3)),
        padding: EdgeInsets.all(8),
        child: Text(pageRoute.title),
      ),
    );
  }
}

class PageRoute {
  String route = '';
  String title = '';
  PageRoute({required this.route, required this.title});
}



// 겹쳐질 수 있는 페이지 이기 때문에, 페이지 여러개의 화면이 공유될 수 있는지를 확인할 필요가 있다.
// Get.toNamed를 쓰지 않아야 할 수 있기 때문이다. - oct7