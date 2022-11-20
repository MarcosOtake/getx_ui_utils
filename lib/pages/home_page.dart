import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Get.toNamed('context_ext');
              },
              child: const Text('Context Ext Page')),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('margin_x');
              },
              child: const Text('Widget Margin X ')),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('sliver_box');
              },
              child: const Text('Widget Sliver BOX ')),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('get_view');
              },
              child: const Text('Get View Page')),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('get_responsive_view');
              },
              child: const Text('Get Responsive View Page')),
        ],
      )),
    );
  }
}
