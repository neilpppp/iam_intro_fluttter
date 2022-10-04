import 'package:get/get.dart';

class ExampleController extends GetxController {
  var count = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void increment() {
    count++;
  }
}
