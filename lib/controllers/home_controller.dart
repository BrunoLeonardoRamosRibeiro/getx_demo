import 'package:get/get.dart';
import 'package:getx_demo/api/users_api.dart';
import 'package:getx_demo/models/user.dart';
import 'package:getx_demo/pages/profile_page.dart';

class HomeController extends GetxController {
  int _counter = 0;

  int get counter => _counter;

  List<User> _users = [];
  List<User> get users => _users;

  bool _loading = true;
  bool get loading => _loading;

  void increment() {
    this._counter++;
    update(['text']);
  }

  Future<void> loadUsers() async {
    final data = await UsersApi.instance.getUsers(1);
    this._users = data;
    this._loading = false;
    update(['users']);
  }

  @override
  void onInit() {
    super.onInit();
    print("Iniciamos o initState");
  }

  @override
  void onReady() {
    super.onReady();
    print("Iniciamos o onRead");
    this.loadUsers();
  }

  showUserProfile(User user){
    Get.to(ProfilePage(), arguments: user);
  }
}
