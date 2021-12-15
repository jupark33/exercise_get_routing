import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Next Page'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text("${Get.arguments}"),
                // Text("${Get.arguments['name']} ${Get.arguments['age']}"),
                Text("${(Get.arguments as User).name} ${(Get.arguments as User).age}"),
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

class User {
  String name;
  int age;

  User({required this.name, required this.age});
}