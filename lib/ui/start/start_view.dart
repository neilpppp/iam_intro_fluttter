import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_flutter/ui/start/start_controller.dart';

class StartView extends StatelessWidget {
  StartView({Key? key}) : super(key: key);

  final StartController ctrl = Get.put(StartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start'),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
