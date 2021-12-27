import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screens/firstPage.dart';
import 'package:getx/screens/secondPage.dart';
import 'package:getx/utils/Localization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      defaultTransition: Transition.cupertino,
      home: const MyHomePage(),
      getPages: [
        GetPage(name: '/first', page:()=> const MyHomePage()),
        GetPage(name: '/second', page:()=> const SecondPage()),
      ],
      locale: const Locale('en','US'),
      translations: Transis(),
    );
  }
}

