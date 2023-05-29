import 'package:flutter/material.dart';

class WrapFlowWidget extends StatefulWidget {
  const WrapFlowWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FlowOnlyWidgetState();
  }
}

class _WrapFlowWidgetState extends State<WrapFlowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap Flow Layout"),
      ),
      body: Center(
          child: Column(
        children: [
          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            alignment: WrapAlignment.start,
            children:const [
              Chip(
                label: Text("Blue"),
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('B'),
                ),
              ),
              Chip(
                label: Text("Red"),
                avatar: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text('R'),
                ),
              ),
              Chip(
                label: Text("Yellow"),
                avatar: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text('Y'),
                ),
              ),
              Chip(
                label: Text("Green"),
                avatar: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text('G'),
                ),
              ),
              Chip(
                label: Text("Yellow"),
                avatar: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text('Y'),
                ),
              ),
              Chip(
                label: Text("Green"),
                avatar: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text('G'),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}

class _FlowOnlyWidgetState extends State<WrapFlowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Only Flow Layout"),
      ),
      body: Center(
        child: Column(
          children: [
            Flow(
              delegate: TestFlowDelegate(margin: const EdgeInsets.all(10.0)),
              children: [
                Container(
                  width: 90.0,
                  height: 90.0,
                  color: Colors.red,
                ),
                Container(
                  width: 90.0,
                  height: 90.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 90.0,
                  height: 90.0,
                  color: Colors.green,
                ),
                Container(
                  width: 90.0,
                  height: 90.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 90.0,
                  height: 90.0,
                  color: Colors.black,
                ),
                Container(
                  width: 90.0,
                  height: 90.0,
                  color: Colors.white,
                ),
                Container(
                  width: 90.0,
                  height: 90.0,
                  color: Colors.purple,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin;

  TestFlowDelegate({this.margin = EdgeInsets.zero});

  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i)!.width + x + margin.right;
      if (w < context.size.width) {
        context.paintChild(i, transform: Matrix4.translationValues(x, y, 0.0));
        x = w + margin.left;
      } else {
        x = margin.left;
        y += context.getChildSize(i)!.height + margin.top + margin.bottom;
        context.paintChild(i, transform: Matrix4.translationValues(x, y, 0.0));
        x += context.getChildSize(i)!.width + margin.left + margin.right;
      }
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return const Size(double.infinity, 200.0);
  }
}
