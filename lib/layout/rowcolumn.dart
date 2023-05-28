import 'package:flutter/material.dart';

class RowColumnWidget extends StatefulWidget {
  const RowColumnWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RowColumnWidgetState();
  }
}

class _RowColumnWidgetState extends State<RowColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("row and column"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 超出一行 会报错，使用流式布局可以解决这个问题
                Text("hello world" * 100),
                const Text("I am dashingqi")
              ],
            ),
            const Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text("hello world"), Text("I am dashingqi")],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              textDirection: TextDirection.rtl,
              children: [Text(" hello world"), Text(" i am dashingqi")],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              verticalDirection: VerticalDirection.down,
              children: [
                Text(
                  "hello world",
                  style: TextStyle(fontSize: 20.0),
                ),
                Text("I am dashingqi")
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _ContainerRowColumnState extends State<RowColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(" Container row column"),
        ),
        body: Container(
          color: Colors.green,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
              children: <Widget>[
                Container(
                  color: Colors.red,
                  child: const Column(
                    mainAxisSize: MainAxisSize.max, //无效，内层Colum高度为实际高度
                    children: <Widget>[
                      Text("hello world "),
                      Text("I am Jack "),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
