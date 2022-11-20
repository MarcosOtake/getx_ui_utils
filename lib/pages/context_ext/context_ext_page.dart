import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContextExtPage extends StatelessWidget {
  const ContextExtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Extension Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //     //width: Get.width, //Não usar pois terá um alto acoplamento
          //     // width: MediaQuery.of(context).size.width, // Pode usar
          //     width: 200,
          //     // width: context
          //     //     .width, // Pode usar porem se for trocar tem que levar o package:get/utils.dart junto
          //     // width: context.widthTransformer(dividedBy: 3),
          //     // width: context.widthTransformer(reducedBy: 60),
          //     height: 200,
          //     // height: context.heightTransformer(dividedBy: 5, reducedBy: 10),
          //     //color:Get.theme.primaryColor, //Não usar pois terá um alto acoplamento
          //     color: context.theme
          //         .primaryColor // Pode usar com a regra da troca caso precise mudar de gerenciador de estado
          //     ),
          // Text(context.orientation.toString()),
          // Text(context.isPhone.toString()),
          // Text(context.devicePixelRatio.toString()),
          // Text(context.mediaQueryPadding.toString()),
          // Text(context.isLandscape.toString()),
          // Text(context.heightTransformer(dividedBy: 50).toString()),

          Text('isLargeTablet: ${context.isLargeTablet}'),
          Text('isTablet: ${context.isTablet}'),
          Text('isSmallTablet: ${context.isSmallTablet}'),
          Text('isPhone: ${context.isPhone}'),

          context.responsiveValue(
              desktop: Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              tablet: Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
              mobile: Container(
                width: 200,
                height: 200,
                color: Colors.deepPurple,
              ),
              watch: Container(
                width: 200,
                height: 200,
                color: Colors.orange,
              ))
        ],
      )),
    );
  }
}

/*
Extensions do GETX veja a Página 
https://pub.dev/documentation/get/latest/get_utils_src_extensions_context_extensions/ContextExtensionss.html

Usado para setar este projeto para web com o comando abaixo
flutter create --platforms web .

*/
