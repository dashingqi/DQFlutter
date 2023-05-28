import 'package:flutter/material.dart';

class StackPositionWidget extends StatefulWidget {
  const StackPositionWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StackPositionWidgetState();
  }
}

class _StackPositionWidgetState extends State<StackPositionWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("stack positioned layout"),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand, // 未定位的widget占满stack整个空间
            children: [
              Container(
                child:
                    Text("Hello World", style: TextStyle(color: Colors.white)),
                color: Colors.red,
                alignment: Alignment.center,
              ),
              const Positioned(child: Text("I am dashingqi"), right: 30.0),
              const Positioned(left: 30.0, child: Text("I am zhangqi"))
            ],
          ),
        ),
      ),
    );
  }
}
