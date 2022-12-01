import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DuplicatedPageController extends GetxController {}




// 겹쳐질 수 있는 페이지 이기 때문에, 페이지 여러개의 화면이 공유될 수 있는지를 확인할 필요가 있다.
// Get.toNamed를 쓰지 않아야 할 수 있기 때문이다. - oct7