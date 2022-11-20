import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WidgetSliverBoxPage extends StatelessWidget {
  const WidgetSliverBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Sliver Box'),
      ),
      body: CustomScrollView(
        slivers: [
          //Sem o uso do sliver do GET vc não consegue usar o Container sem
          //estar dentro do SliverToBoxAdapter
          Container(
                  height: 200,
                  width: 200,
                  color: Theme.of(context).primaryColor)
              .sliverBox,
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
