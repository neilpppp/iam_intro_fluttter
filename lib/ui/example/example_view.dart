import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_flutter/ui/example/example_controller.dart';

class ExampleView extends StatelessWidget {
  ExampleView({Key? key}) : super(key: key);

  final ExampleController ctrl = Get.put(ExampleController());

  final _formKey = GlobalKey<FormState>();
  final textController = TextEditingController();

  String imgUrl =
      'https://images.unsplash.com/photo-1441239372925-ac0b51c4c250?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=432&q=80';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            _buildSizedBox(),
            _buildText(),
            _buildContainer(),
            _buildSizedBox(),
            _buildColumn(),
            _buildSizedBox(),
            _buildRow(),
            _buildSizedBox(),
            _buildForm(),
            _buildButton(),
            _buildSizedBox(),
            _buildImgFromUrl(),
          ],
        ),
      ),
    );
  }

  Widget _buildText() {
    return const Text('text');
  }

  Widget _buildSizedBox() {
    return const SizedBox(height: 40, width: 60);
  }

  Widget _buildContainer() {
    return Container(
      height: 60,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.redAccent.withOpacity(0.7),
        border: Border.all(width: 4, color: Colors.lightBlue),
      ),
    );
  }

  Widget _buildColumn() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('column'),
        Container(color: Colors.amber, width: Get.width, height: 30),
        Container(color: Colors.blueAccent, width: Get.width, height: 30),
        Container(color: Colors.greenAccent, width: Get.width, height: 30),
      ],
    );
  }

  Widget _buildRow() {
    return Row(
      children: [
        const Text('row'),
        Container(color: Colors.amber, width: 80, height: 30),
        Container(color: Colors.blueAccent, width: 80, height: 30),
        Container(color: Colors.greenAccent, width: 80, height: 30),
      ],
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: textController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  Widget _buildButton() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          print(textController.text);
        }
      },
      child: const Text('submit'),
    );
  }

  Widget _buildImgFromUrl() {
    return Image.network(
      imgUrl,
      height: 360,
    );
  }
}
