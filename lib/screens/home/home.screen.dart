import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxApp/locales/langs.dart';
import 'package:getxApp/screens/base/base_view.dart';

class HomeScreen extends BaseView {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends BaseState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return baseScaffold(
        body: Column(
      children: [
        Container(
          width: getWidthWithPercent(10),
          height: getHeightWithPercent(10),
          color: Colors.red,
        ),
        Text(getStringById(AppLang.text_hello)),
      ],
    ));
  }
}
