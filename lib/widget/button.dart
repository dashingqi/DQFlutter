import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ButtonWidgetState();
  }
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Button Widget")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("normal")),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.send),
                label: const Text("发送")),
            TextButton(onPressed: () {}, child: const Text("normal")),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text("添加")),
            OutlinedButton(onPressed: () {}, child: const Text("normal")),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.info),
                label: const Text("详情")),
            IconButton(onPressed: () {}, icon: const Icon(Icons.abc_sharp)),
          ],
        ),
      ),
    );
  }
}
