import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getxApp/@core/constants.dart';
import 'package:getxApp/screens/home/home.screen.dart';

class Routes {
  static List<GetPage> configureRouters() {
    // Add route here
    final pages = [
      //Simple GetPage
      GetPage(
        name: AppConstants.ROUTE_HOME,
        page: () => HomeScreen(),
        // binding: HomeBinding(),
      )
    ];
    return pages;
  }
}
