import 'package:get/get.dart';
import 'package:infinite_scroll/controllers/infinite_scroll_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(InfiniteScrollController());
  }
}
