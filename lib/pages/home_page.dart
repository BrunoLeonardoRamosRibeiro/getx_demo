import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/home_controller.dart';
import 'package:getx_demo/pages/home_page_widgets/home_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        print('Build Home');
        return Scaffold(
          body: HomeList(),
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
