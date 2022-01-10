import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll/controllers/infinite_scroll_controller.dart';

class GridViewWithGetX extends GetView<InfiniteScrollController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Infinite Scroll GridView with GetX'),
      ),
      body: Obx(
        () => SizedBox(
          height: 250,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              scrollDirection: Axis.horizontal,
              controller: controller.scrollController.value,
              itemBuilder: (_, index) {
                print(controller.hasMore.value);
                if (index < controller.data.length) {
                  var datum = controller.data[index];
                  return Card(
                    elevation: 10.0,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('$datum'),
                    ),
                  );
                }
                if (controller.hasMore.value || controller.isLoading.value) {
                  return Center(child: RefreshProgressIndicator());
                }
                return Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Column(
                      children: [
                        Text('데이터의 마지막 입니다'),
                        IconButton(
                          onPressed: () {
                            controller.reload();
                          },
                          icon: Icon(Icons.refresh_outlined),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: controller.data.length + 1,
            ),
          ),
        ),
      ),
    );
  }
}
