import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformWidget extends StatefulWidget {
  const TransformWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TransformWidgetState();
  }
}

class _TransformWidgetState extends State<TransformWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Transform Widget"),
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 60, 0, 0),
            child: Column(
              children: [
                Container(
                  color: Colors.black,
                  child: Transform(
                    alignment: Alignment.topRight,
                    transform: Matrix4.skewY(0.3),
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Colors.deepOrange,
                      child: const Text(" I am Dashingqi"),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.red),
                      child: Transform.translate(
                        offset: Offset(-20.0, -5.0),
                        child: Text("I Am Dashingqi"),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 80.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.red),
                    child: Transform.rotate(
                      angle: math.pi / 2,
                      child: Text(" I am dashingqi"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 60.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.red),
                    child: Transform.scale(
                      scale: 1.5,
                      child: Text(" I am dashingqi"),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    DecoratedBox(
                        decoration: BoxDecoration(color: Colors.red),
                        child: Transform.scale(
                            scale: 1.5, child: Text("Hello world"))),
                    Text(
                      "你好",
                      style: TextStyle(color: Colors.green, fontSize: 18.0),
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    DecoratedBox(
                      decoration: BoxDecoration(color: Colors.red),
                      //将Transform.rotate换成RotatedBox
                      child: RotatedBox(
                        quarterTurns: 1, //旋转90度(1/4圈)
                        child: Text("Hello world"),
                      ),
                    ),
                    Text(
                      "你好",
                      style: TextStyle(color: Colors.green, fontSize: 18.0),
                    )
                  ],
                ),
              ],
            )));
  }
}
