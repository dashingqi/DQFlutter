import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ContainerWidgetState();
  }
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Container Widget"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.only(top: 50.0, left: 120.0, bottom: 30.0),
                constraints:
                    const BoxConstraints.tightFor(width: 200.0, height: 150.0),
                decoration: const BoxDecoration(
                    gradient: RadialGradient(
                        colors: [Colors.red, Colors.orange],
                        center: Alignment.topLeft,
                        radius: .98),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(20.0, 20.0),
                          blurRadius: 4.0)
                    ]),
                transform: Matrix4.rotationZ(.2),
                alignment: Alignment.center,
                child: const Text(
                  "5.20",
                  style: TextStyle(color: Colors.white, fontSize: 40.0),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20.0),
                color: Colors.orange,
                child: const Text("Hello World!"),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                color: Colors.orange,
                child: const Text("Hello World!"),
              )
            ],
          ),
        ));
  }
}
