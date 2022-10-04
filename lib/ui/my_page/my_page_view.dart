import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_flutter/ui/my_page/my_page_controller.dart';

class MyPageView extends StatelessWidget {
  MyPageView({Key? key}) : super(key: key);

  final MyPageController ctrl = Get.put(MyPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyPage'),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
