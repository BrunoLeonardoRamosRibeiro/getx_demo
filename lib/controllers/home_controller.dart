import 'package:get/get.dart';

class HomeController extends GetxController{
  int _counter = 0;
  int get counter => _counter;

  void increment(){
    this._counter++;
    update();
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


  }

}