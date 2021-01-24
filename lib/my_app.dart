import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxApp/@core/constants.dart';
import 'package:getxApp/locales/app_translations.dart';
import 'package:getxApp/routers/router.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initConfig();
  }

  void initConfig() {
    _initLoading();
  }

  void _initLoading() => EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2500)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..maskType = EasyLoadingMaskType.black
    ..loadingStyle = EasyLoadingStyle.light
    ..toastPosition = EasyLoadingToastPosition.bottom
    ..indicatorSize = 45
    ..radius = 10
    ..fontSize = 13
    ..userInteractions = false;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppConstants.ROUTE_HOME,
      getPages: Routes.configureRouters(),
      defaultTransition: Transition.native,
      translations: AppTranslations(),
      locale: Locale(AppConstants.VI_CODE),
      // specify the fallback locale in case an invalid locale is selected.
      fallbackLocale: Locale(AppConstants.VI_CODE),
      builder: EasyLoading.init(),
    );
  }
}
