import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll/pages/home_page.dart';
import 'bindings/app_binding.dart';

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
      ),
      initialBinding: AppBinding(),
      home: HomePage(),
    );
  }
}
