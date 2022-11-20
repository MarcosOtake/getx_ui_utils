import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WidgetMarginXPage extends StatelessWidget {
  const WidgetMarginXPage({Key? key}) : super(key: key);
/*Sobre o tema Margens ou Padding não é aconselhado que faça seu uso 
por conta do acoplamento desnecessário 
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Margin Page X'),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ).marginAll(20),
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ).paddingAll(40),
        ],
      )),
    );
  }
}
