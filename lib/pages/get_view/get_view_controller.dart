import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetViewController extends GetxController {
  final nome = 'Marcos'.obs;

  @override
  void onReady() {
    debugPrint(' onReady Carregado');
    super.onReady();
  }

  void alterarNome() {
    nome.value = 'Marcos Otake';
  }
}
