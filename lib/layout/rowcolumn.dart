import 'package:flutter/material.dart';

class RowColumnWidget extends StatefulWidget {
  const RowColumnWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ContainerRowColumnState();
  }
}

class _RowColumnWidgetState extends State<RowColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("row and column"),
      ),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("hello world"), Text("I am dashingqi")],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text("hello world"), Text("I am dashingqi")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              textDirection: TextDirection.rtl,
              children: [Text(" hello world"), Text(" i am dashingqi")],
            ),
            Row(
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
