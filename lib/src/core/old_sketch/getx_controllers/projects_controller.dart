import 'package:flutter/material.dart' show PageController;
import 'package:get/get.dart';

class ProjectController extends GetxController {
  RxList<bool> hovers =
      [false, false, false, false, false, false, false, false, false].obs;

  onHover(int index, bool value) {
    hovers[index] = value;
  }
}

final PageController controller = PageController();
