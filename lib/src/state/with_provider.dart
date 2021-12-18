import 'package:exercise_get/src/controller/count_controller_with_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  // Widget _button() {
  //   return ElevatedButton(
  //    child: Text("+", style: TextStyle(fontSize: 30)),
  //    onPressed: () {
  //      Provider.of<CountControllerWithProvider>(context, listen: false).increase();
  //    }
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Provider",
            style: TextStyle(fontSize: 30),
          ),
          Consumer<CountControllerWithProvider>(
            builder: (_,snapshot,child) {
              return           Text(
                "${snapshot.count}",
                style: TextStyle(fontSize: 30),
              );
            },
          ),

          ElevatedButton(
              onPressed: () {
                // listen false 하게 되면 상단 Consumer 만 빌드 된다.
                Provider.of<CountControllerWithProvider>(context, listen: false).increase();
              },
              child: Text("+", style: TextStyle(fontSize: 30)),
          )
        ]
      )
    );
  }
}


