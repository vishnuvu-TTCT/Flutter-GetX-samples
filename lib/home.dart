import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Internationalization "),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("hello".tr, style: const TextStyle(fontSize: 25),),
            const SizedBox(height: 20,),
            MaterialButton(
              onPressed: () {
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              },
              color: Colors.grey[350],
              child: const Text(
                "Mode",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20,),
            MaterialButton(
              onPressed: () {
                Get.updateLocale(const Locale('en','US'));
              },
              color: Colors.grey[350],
              child: const Text(
                "Change Language to English",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20,),
            MaterialButton(
              onPressed: () {
                Get.updateLocale(const Locale('ar','OM'));
              },
              color: Colors.grey[350],
              child: const Text(
                "Change Language to Arabic",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20,),
            MaterialButton(
              onPressed: () {
                Get.updateLocale(const Locale('pt','BR'));
              },
              color: Colors.grey[350],
              child: const Text(
                "Change Language to Portuguese",
                style: TextStyle(color: Colors.black),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
