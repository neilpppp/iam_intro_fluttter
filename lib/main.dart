import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_flutter/ui/example/example_view.dart';
import 'package:intro_flutter/ui/home/home_view.dart';
import 'package:intro_flutter/ui/start/start_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   initialRoute: '/home',
    //   routes: {
    //     '/home': (context) => HomePage(),
    //   },
    // );
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () => HomeView()),
        GetPage(name: '/start', page: () => StartView()),
        GetPage(name: '/example', page: () => ExampleView()),
      ],
    );
  }
}
