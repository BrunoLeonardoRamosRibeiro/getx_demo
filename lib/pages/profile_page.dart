import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (controller){
        return Scaffold(
          appBar: AppBar(
            title: Text('Profile Page'),
          ),
          body: Center(
            child: Text("${controller.user.firstName} ${controller.user.lastName}"),
          ),
        );
      },
    );
  }
}
