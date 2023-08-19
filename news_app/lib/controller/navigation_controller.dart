import 'package:get/get.dart';
import '../views/screens/category_page.dart';
import '../views/screens/homepage.dart';
import '../views/screens/search_page.dart';
import '../views/screens/settings_page.dart';

class NavigationController extends GetxController {
  RxInt pageIndex = 0.obs;
  var pages = [HomePage(), CategoryPage(), SearchPage(), SettingsPage()];

  void changePage (int index) {
    pageIndex.value = index;
  }
}