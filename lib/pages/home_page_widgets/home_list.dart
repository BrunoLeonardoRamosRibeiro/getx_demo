import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/home_controller.dart';
import 'package:getx_demo/models/user.dart';

class HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'users',
      builder: (controller){

        if (controller.loading) {
          return Center(child: LinearProgressIndicator());
        }

        return ListView.builder(
          itemCount: controller.users.length,
          itemBuilder: (context, index) {
            final User user = controller.users[index];
            return ListTile(
              title: Text(user.firstName),
              subtitle: Text(user.email),
            );
          },
        );
      },
    );
  }
}
