import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetResponsiveViewPage extends GetResponsiveView {
  GetResponsiveViewPage({Key? key}) : super(key: key);

  @override
  Widget? desktop() {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: const Text('DESKTOP'),
      ),
    );
  }

  @override
  Widget? tablet() {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('TABLET'),
      ),
    );
  }

  @override
  Widget? phone() {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text('PHONE'),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Get Resposnive View'),
  //     ),
  //     body: Container(),
  //   );
  // }
}
