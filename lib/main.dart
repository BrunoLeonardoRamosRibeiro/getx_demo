import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/global_controller.dart';
import 'package:getx_demo/controllers/socket_client_controller.dart';
import 'package:getx_demo/pages/reactive_page.dart';
import 'package:getx_demo/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(GlobalController());
    Get.put(SocketClienteController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estudo de GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ReactivePage(),
    );
  }
}

