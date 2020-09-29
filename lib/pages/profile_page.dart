import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Profile Page'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Get.back(),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${controller.user.firstName} ${controller.user.lastName}"),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: TextField(
                  onChanged: controller.onInputTextChanged,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                child: Text('ACEITAR'),
                onPressed: controller.goToBackWithData,
              )
            ],
          ),
        );
      },
    );
  }
}
