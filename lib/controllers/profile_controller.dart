import 'package:get/get.dart';
import 'package:getx_demo/models/user.dart';

class ProfileController extends GetxController{

  User _user;
  User get user => _user;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    this._user = Get.arguments as User;
    print("Get arguments: ${Get.arguments}");
  }
}