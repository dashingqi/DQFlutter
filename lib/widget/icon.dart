import 'package:dq_flutter/widget/MyIcons.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _IconWidgetState();
  }
}

class _IconWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    String icons = "";
    icons += "\uE03e";
    icons += " \uE237";
    icons += " \uE287";
    return Scaffold(
      appBar: AppBar(
        title: const Text("IconWidget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 使用Material Design字体图标
            Text(
              icons,
              style: const TextStyle(
                  fontFamily: "MaterialIcons",
                  fontSize: 24.0,
                  color: Colors.yellow),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.accessible, color: Colors.green),
                Icon(Icons.error, color: Colors.red),
                Icon(Icons.inbox, color: Colors.yellow)
              ],
            ),
            // 自定义图标
            const Icon(
              MyIcons.location,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
