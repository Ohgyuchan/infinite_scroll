import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll/pages/infinite_scroll_view.dart';
import 'bindings/app_binding.dart';
import 'pages/home_page.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter!'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => InfiniteScrollView());
                },
                child: Text('Infinite Scroll View'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
