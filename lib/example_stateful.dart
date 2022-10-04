import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExampleStatefulPage extends StatefulWidget {
  const ExampleStatefulPage({Key? key}) : super(key: key);

  @override
  _ExampleStatefulPage createState() => _ExampleStatefulPage();
}

class _ExampleStatefulPage extends State<ExampleStatefulPage> {
  @override
  initState() {
    super.initState();
    setState(() {
      // set state
    });
  }

  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
