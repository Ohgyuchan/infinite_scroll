import 'package:get/get.dart';
import 'package:infinite_scroll/pages/grid_view_with_getx.dart';
import 'local_infinite_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll/pages/local_infinite_scroll_grid_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter!'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => LocalInfiniteScrollView());
              },
              child: Text('Local Infinite Scroll View'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => GridViewWithGetX());
              },
              child: Text('Infinite Scroll GridView with GetX'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => InfiniteGridExample());
              },
              child: Text('Infinite Grid Scroll View'),
            ),
          ),
        ],
      ),
    );
  }
}
