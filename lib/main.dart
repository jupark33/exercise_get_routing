import 'package:exercise_get/src/home.dart';
import 'package:exercise_get/src/pages/named/first.dart';
import 'package:exercise_get/src/pages/named/second.dart';
import 'package:exercise_get/src/pages/next.dart';
import 'package:exercise_get/src/pages/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: Home(),
      initialRoute: "/",
      // routes : {
      //   "/" : (context) => Home(),
      //   "/first" : (context) => FirstNamedPage(),
      //   "/second" : (context) => SecondNamedPage(),
      // },
      getPages: [
        GetPage(name:"/", page : ()=>Home(), transition: Transition.zoom),
        GetPage(name:"/first", page : ()=>FirstNamedPage(), transition: Transition.zoom),
        GetPage(name:"/second", page : ()=>SecondNamedPage(), transition: Transition.zoom),
        GetPage(name:"/next", page : ()=>NextPage(), transition: Transition.zoom),
        GetPage(name:"/user/:uid", page : ()=>UserPage(), transition: Transition.zoom),
      ]
    );
  }
}

