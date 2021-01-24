import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:getxApp/extensions/context.ext.dart';
import 'package:get/get.dart';

abstract class BaseView extends StatefulWidget {
  // final BaseModel baseModel = BaseModel();
  //
  // setDataArgument(dynamic data) => baseModel.dataArgument = data;
  //
  // dynamic getDataArgument() => baseModel.dataArgument;
}

abstract class BaseState<T extends BaseView> extends State<T> {
  String getStringById(String key) => context.getString(key);

  double getHeightWithPercent(double per) =>
      (context.mediaQuerySize.height * per) / 100;

  double getWidthWithPercent(double per) =>
      (context.mediaQuerySize.width * per) / 100;

  void showToast(String content) =>
      EasyLoading.showToast(getStringById(content));

  // void showLoading([String content]) => EasyLoading.show(
  //   status: content != null
  //       ? getStringById(content)
  //       : getStringById(Localizes.text_loading),
  // );

  void hideLoading() => EasyLoading.dismiss();

  Future goTo(String router, [dynamic params]) async =>
      await context.goToScreen(router, params);

  Future goToAndRemove(String router, [dynamic params]) async =>
      await context.goToAndRemoveScreen(router, params);

  Future goToAndRemoveAll(String router, [dynamic params]) async =>
      await context.goToAndRemoveAllScreen(router, params);

  Widget baseScaffold(
      {String title,
      @required Widget body,
      Widget titleBody,
      bool isWebView = false,
      bool hideLeading = false,
      bool resizeToAvoidBottomInset = true,
      Widget actionWidget,
      Widget floatingActionButton}) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: title != null || titleBody != null
              ? AppBar(
                  actions: <Widget>[actionWidget ?? Container()],
                  elevation: 0,
                  backgroundColor: Colors.white,
                  leading: hideLeading
                      ? Icon(null)
                      : IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                  title: titleBody ?? Text(title),
                )
              : null,
          body: isWebView
              ? body
              : GestureDetector(
                  onTap: () => FocusScope.of(context).unfocus(),
                  child: body,
                ),
          floatingActionButton: floatingActionButton,
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          resizeToAvoidBottomPadding: true,
        ),
      ),
    );
  }

// void showNotifyDialog(
//     {titleText,
//       titleStyle,
//       contentText,
//       contentStyle,
//       confirmText,
//       confirmStyle,
//       cancelText,
//       cancelStyle,
//       cancelAction,
//       confirmAction}) async {
//   await Get.dialog(AlertDialogCustom(
//     titleText: titleText,
//     titleStyle: titleStyle,
//     contentText: contentText,
//     contentStyle: contentStyle,
//     confirmText: confirmText ?? getStringById(Localizes.text_confirm_dialog),
//     confirmStyle: confirmStyle,
//     cancelText: cancelText ?? getStringById(Localizes.text_cancel),
//     cancelStyle: cancelStyle,
//     cancelAction: cancelAction,
//     confirmAction: confirmAction,
//   ));
// }
}
