import 'package:flutter/material.dart';

class AlignWidget extends StatefulWidget {
  const AlignWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AlignWidgetState();
  }
}

/// Alignment Widget会以矩形的中心点作为坐标原点
/// Alignment通过其坐标转换公式 = (Alignment.x * childWidth/2 + childWidth/2, Alignment.y * childHeight/2 + childHeight/2)
/// FractionalOffset通过其坐标转换公式 = (FractionalOffset.x * childWidth , FractionalOffset.y * childHeight )
/// FractionalOffset 的坐标原点为矩形的左侧顶点
class _AlignWidgetState extends State<AlignWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("align layout"),
      ),
      body: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              color: Colors.blue.shade50,
              child: const Align(
                widthFactor: 2,
                heightFactor: 2,
                alignment: FractionalOffset(0.2, 0.3),
                child: FlutterLogo(size: 60),
              ),
            ),
          )),
    );
  }
}
