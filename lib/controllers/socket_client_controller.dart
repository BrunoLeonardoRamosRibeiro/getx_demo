import 'dart:async';
import 'package:faker/faker.dart';

import 'package:get/get.dart';

class SocketClienteController extends GetxController {
  RxString _message = "".obs;
  RxString get message => _message;


  Timer _timer;

  final _faker = Faker();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _init();
  }

  _init(){
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {

      //print("rodou ${DateTime.now()}");
      _message.value = _faker.lorem.sentence();

    });
  }

  @override
  FutureOr onClose() {
    if (_timer != null) {
      _timer.cancel();
    }

    return super.onClose();
  }
}
