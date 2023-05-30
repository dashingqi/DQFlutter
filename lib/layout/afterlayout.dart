import 'package:flutter/material.dart';

class AfterLayoutWidget extends StatefulWidget {
  const AfterLayoutWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AfterLayoutWidgetState();
  }
}

class _AfterLayoutWidgetState extends State<AfterLayoutWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(padding: const EdgeInsets.all(8.0),
          child: Builder(
            builder: (context){
              return GestureDetector(
                child: const Text(
                  "Text1:点我获取我的大小",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () =>  print("Text1: ${context.size}"),
              );
            },
          ),
        ),
      ],
    );
  }
}
