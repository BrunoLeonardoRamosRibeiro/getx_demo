import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => Scaffold(
        body: Center(
          child: Text(
            controller.counter.toString(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            controller.increment();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
