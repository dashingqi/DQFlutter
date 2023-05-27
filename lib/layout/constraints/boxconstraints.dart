import 'package:flutter/material.dart';

class BoxConstraintsWidget extends StatefulWidget {
  const BoxConstraintsWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BoxConstraintWidget();
  }
}

class _BoxConstraintWidget extends State<BoxConstraintsWidget> {
  // 声明一个红色的盒子
  Widget redBox = const DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("boxConstraints"),
        actions: const [
          UnconstrainedBox(
            child: SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation(Colors.white70),
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ConstrainedBox(
              constraints:
                  const BoxConstraints(minWidth: 60.0, minHeight: 60.0),
              child: UnconstrainedBox(
                child: ConstrainedBox(
                  constraints:
                      const BoxConstraints(minWidth: 90.0, minHeight: 20.0),
                  child: redBox,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
