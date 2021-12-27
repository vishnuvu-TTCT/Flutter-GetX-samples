import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Features"),
        centerTitle: true,
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark());
                },
                child: Text(
                  "Change Theme",
                  style: TextStyle(color: Get.isDarkMode? Colors.white :Colors.white ),
                ),
                color:  Colors.blue,
              ),
              const SizedBox(height: 20,),
              MaterialButton(
                onPressed: () {
                  Get.snackbar(
                    "Hello",
                    "EveryOne",
                    snackPosition: SnackPosition.BOTTOM,
                  );
                },
                child: Text(
                  "Snack Bar",
                  style: TextStyle(color: Get.isDarkMode? Colors.white :Colors.white ),
                ),
                color:  Colors.blue,
              ),
              const SizedBox(height: 20,),
              MaterialButton(
                onPressed: () {
                  Get.defaultDialog(
                      title: "Hey Everyone",
                      content: const Text("Hello There"));
                },
                child:  Text(
                  "Dialog",
                  style: TextStyle(color: Get.isDarkMode? Colors.white :Colors.white ),
                ),
                color:  Colors.blue,
              ),
              const SizedBox(height: 20,),
              MaterialButton(
                onPressed: () {

                },
                child:  Text(
                  "BottomSheet",
                  style: TextStyle(color: Get.isDarkMode? Colors.white :Colors.white ),
                ),
                color:  Colors.blue,
              ),
            ],
          ),
        )
    );
  }
}
