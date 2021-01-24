import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension ContextExtension on BuildContext {
  Future goToScreen(String path, [dynamic params]) async =>
      await Get.toNamed(path, arguments: params);

  Future goToAndRemoveScreen(String path, [dynamic params]) async =>
      await Get.offNamed(path, arguments: params);

  Future goToAndRemoveAllScreen(String path, [dynamic params]) async =>
      await Get.offAllNamed(path, arguments: params);

  String getString(String key) => key.tr;
}
