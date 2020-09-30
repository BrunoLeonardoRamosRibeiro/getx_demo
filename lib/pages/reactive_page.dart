import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/reactive_controller.dart';
import 'package:getx_demo/controllers/socket_client_controller.dart';

class ReactivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final socketController = Get.find<SocketClienteController>();
    return GetBuilder<ReactiveController>(
      init: ReactiveController(),
      builder: (_) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text("age ${_.myPet.age}"),
              ),
              Obx(
                    () => Text(socketController.message.value),
              ),
              FlatButton(
                onPressed: (){
                  _.setPetAge(_.myPet.age + 1);
                },
                child: Text('set age'),
              ),
            ],
          ),

//          body: Obx(
//            () => ListView(
//              children: _.mapItems.values
//                  .map((e) => ListTile(
//                        title: Text(e),
//                        trailing: IconButton(
//                          icon: Icon(Icons.delete),
//                          onPressed: ()=> _.removeMapItem(e),
//                        ),
//                      ))
//                  .toList(),
//            ),
//          ),
//          floatingActionButton: Row(
//            mainAxisAlignment: MainAxisAlignment.end,
//            children: [
//              Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: FloatingActionButton(
//                  heroTag: 'add',
//                  onPressed: () {
//                    //_.increment();
//                    //_.addItem();
//                    _.addMapItem();
//                  },
//                  child: Icon(Icons.add),
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: FloatingActionButton(
//                  heroTag: 'date',
//                  onPressed: () {
//                    _.getDate();
//                  },
//                  child: Icon(Icons.calendar_today),
//                ),
//              ),
//            ],
//          ),
        );
      },
    );
  }
}
