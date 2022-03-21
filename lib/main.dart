import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Snackbar",
        home: Scaffold(
          appBar: AppBar(
            title: Text('SnackBar'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.snackbar("Title", "Message", snackPosition: SnackPosition.BOTTOM );
                  },
                  child: const Text('Show Snackbar'),
                )
              ],
            ),
          ),
        ));
  }
}
