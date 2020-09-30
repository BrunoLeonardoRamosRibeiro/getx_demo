import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/global_controller.dart';
import 'package:getx_demo/controllers/home_controller.dart';
import 'package:getx_demo/pages/home_page_widgets/home_list.dart';
import 'package:getx_demo/widgets/product_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        print('Build Home');

        return Scaffold(
          //body: HomeList(),
          appBar: AppBar(
            actions: [
              GetBuilder<GlobalController>(
                id: 'favorites',
                builder: (_) => FlatButton(
                  child: Text('Favoritos (${_.favorites.length})'),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          body: ProductList(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              controller.increment();
            },
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
