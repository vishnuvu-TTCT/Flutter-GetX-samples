import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screens/secondPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController emailCtrl =  TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF600eb2),
          title: Text("title".tr),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: emailCtrl,
                ),
              ),
              MaterialButton(
                onPressed: () {
                  if(GetUtils.isEmail(emailCtrl.text)){
                    if (kDebugMode) {
                      print("email is valid");
                    }
                  }else{
                    if (kDebugMode) {
                      print("email is not valid");
                    }
                  }
                },
                child: const Text(
                  "Validate Mobile",
                ),
                color: const Color(0xFFd3d2d4),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  Get.updateLocale(const Locale('en','US'));
                },
                child: const Text(
                  "Change to English",
                ),
                color: const Color(0xFFd3d2d4),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  Get.updateLocale(const Locale('ar','OM'));
                  },
                child: const Text(
                  "Change to Arabic",
                ),
                color: const Color(0xFFd3d2d4),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  Get.toNamed('second');
                },
                child: const Text(
                  "Next Page",
                ),
                color: const Color(0xFFd3d2d4),
              ),
            ],
          ),
        ));
  }
}
