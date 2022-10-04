import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyComponent extends StatelessWidget {
  final String? firstName;

  const MyComponent({
    Key? key,
    this.firstName = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
