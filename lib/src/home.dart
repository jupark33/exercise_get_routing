import 'package:exercise_get/src/pages/next.dart';
import 'package:exercise_get/src/pages/normal/first.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("라우트 관리 홈"),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(                  
                  child: Text("일반적인 라우트"),
                  onPressed: () {
                    Get.to(FirstPage());
                  },
                ),
                ElevatedButton(
                  child: Text("Named 라우트"),
                  onPressed: () {
                    Get.toNamed("/first");
                  },
                ),
                ElevatedButton(
                  child: Text("Arguments 전달"),
                  onPressed: () {
                    // Get.toNamed("/next", arguments: "개남");
                    // Get.toNamed("/next", arguments: {"name":"GDHONG", "age":"22"});
                    Get.toNamed("/next", arguments: User(
                      name: "홍길동", age: 33
                    ));
                  },
                ),
                ElevatedButton(
                  child: Text("동적 URL 전달"),
                  onPressed: () {
                    // Get.toNamed("/user/28357");
                    Get.toNamed("/user/28357?name=개남&age=22");
                  },
                )
              ],
            ))
    );
  }
}
