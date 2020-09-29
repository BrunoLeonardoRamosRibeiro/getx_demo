import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/models/user.dart';

class ProfileController extends GetxController {
  User _user;

  User get user => _user;

  String _inputText = '';

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    this._user = Get.arguments as User;
    print("Get arguments: ${Get.arguments}");
  }

  void onInputTextChanged(String text) {
    this._inputText = text;
  }

  void goToBackWithData() {
    if (this._inputText.trim().length > 0) {
      Get.back(result: this._inputText);
    } else {
      showCupertinoModalPopup(
        context: Get.overlayContext,
        builder: (_) => CupertinoActionSheet(
          title: Text("ERRO"),
          message: Text("Informe um valor"),
          cancelButton: CupertinoActionSheetAction(
            onPressed: ()=> Get.back(),
            child: Text("CONFIRMAR"),
          ),
        ),
      );

      // Android
      /*Get.dialog(
        AlertDialog(
          title: Text("ERRO"),
          content: Text('Informe um valor válido'),
          actions: [
            FlatButton(
              onPressed: () => Get.back(),
              child: Text('CONFIRMA'),
            )
          ],
        ),
      );*/
    }
  }
}
