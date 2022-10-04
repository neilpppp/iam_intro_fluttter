import 'package:get/get.dart';
import 'package:intro_flutter/services/api.dart';
import 'package:intro_flutter/services/models/user_response.dart';

class HomeController extends GetxController {
  var user = UserResponse().obs;

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

  void fetchUser() async {
    var response = await getUser();
    user.value = response;
  }
}
