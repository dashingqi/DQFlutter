import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TextWidgetState();
  }
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Text Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello World" * 6,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                    height: 1.4,
                    fontFamily: "Courier",
                    background: Paint()..color = Colors.yellow,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dashed)),
            Text("data" * 4, maxLines: 1, overflow: TextOverflow.ellipsis),
            const Text("Hello World", textScaleFactor: 1.5),
            const Text.rich(TextSpan(children: [
              TextSpan(text: "home:"),
              TextSpan(
                  text: "https://www.baidu.com",
                  style: TextStyle(color: Colors.amber)),
            ])),
            const DefaultTextStyle(
                style: TextStyle(color: Colors.red, fontSize: 20.0),
                textAlign: TextAlign.start,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("hello world"),
                    Text("I am DashingQi"),
                    Text(
                      "I am DashingQi",
                      style: TextStyle(inherit: false, color: Colors.green),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}