import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_flutter/ui/home/home_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final HomeController ctrl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                Get.toNamed('start');
              },
              child: const Text('start'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('example');
              },
              child: const Text('example'),
            ),
          ],
        ),
      ),
    );
  }
}
