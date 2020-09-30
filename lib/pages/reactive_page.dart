import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/reactive_controller.dart';

class ReactivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReactiveController>(
      init: ReactiveController(),
      builder: (_) {


        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () {
                    print('Reactive');
                    return Text(
                      "${_.counter.value}",
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
                Obx(
                  () {
                    print('Reactive Data');
                    return Text(
                      "${_.currentDate.value}",
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  heroTag: 'add',
                  onPressed: () {
                    _.increment();
                  },
                  child: Icon(Icons.add),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  heroTag: 'date',
                  onPressed: () {
                    _.getDate();
                  },
                  child: Icon(Icons.calendar_today),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
