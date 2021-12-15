import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User Page'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${Get.parameters['uid']}"),
                Text("${Get.parameters['name']}님 안녕"),
                Text("${Get.parameters['age']}"),
                ElevatedButton(
                  child: Text("뒤로 이동"),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ],
            )
        )
    );
  }
}
