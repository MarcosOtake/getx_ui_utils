import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_ui_utils/pages/get_view/get_view_controller.dart';

class GetViewPage extends GetView<GetViewController> {
  //Nesse caso a atenção será dada para o carregamento da tela
  //onde ao usar o GetView como extensão caso use um lazyPut no Binding
  //o controller não será iniciado caso vc não tenha nenhum item que precisa da
  //controller....  nesse caso se precisa carregar algo com o lazyPut use a chamada abaixo
  //final controller = Get.find<GetViewController>();

  const GetViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get View'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() {
            return Text(controller.nome.value);
          }),
          ElevatedButton(
              onPressed: () {
                controller.alterarNome();
              },
              child: const Text('Alterar nome'))
        ],
      )),
    );
  }
}
