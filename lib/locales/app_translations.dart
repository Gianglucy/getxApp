import 'package:getxApp/locales/i18n_vi.dart';
import 'package:getxApp/locales/i18n_en.dart';
import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en': en,
    'vi': vi,
  };
}
