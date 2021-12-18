import 'package:exercise_get/src/controller/count_controller_with_getx.dart';
import 'package:exercise_get/src/controller/count_controller_with_provider.dart';
import 'package:exercise_get/src/controller/count_controller_with_reactive.dart';
import 'package:exercise_get/src/state/with_getx.dart';
import 'package:exercise_get/src/state/with_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    return Scaffold(
        appBar: AppBar(
          title: Text('반응형상태관리'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("GetX", style: TextStyle(fontSize: 30)),
                Obx(() => Text(
                    "${Get.find<CountControllerWithReactive>().count.value}",
                    style: TextStyle(fontSize: 50))),
                ElevatedButton(
                  child: Text("+", style: TextStyle(fontSize: 30)),
                  onPressed: () {
                    Get.find<CountControllerWithReactive>().increase();
                  },
                )
              ],
            )
        )
    );
  }
}
