import 'package:flutter/material.dart';
import 'package:infinite_widgets/infinite_widgets.dart';

class InfiniteGridExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InfiniteGridExampleState();
  }
}

class _InfiniteGridExampleState extends State<InfiniteGridExample> {
  List<int> _data = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Infinite grid'),
      ),
      body: InfiniteGridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              color: Colors.grey,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('$index', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          );
        },
        itemCount: _data.length,
        hasNext: _data.length < 200,
        nextData: this.loadNextData,
      ),
    );
  }

  loadNextData() {
    final initialIndex = _data.length;
    final finalIndex = _data.length + 10;
    print('load data from ${_data.length}');

    Future.delayed(Duration(seconds: 3), () {
      for (var i = initialIndex; i < finalIndex; ++i) {
        _data.add(i);
      }
      print('${_data.length} data now');
      setState(() {});
    });
  }
}
