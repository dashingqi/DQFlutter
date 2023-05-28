import 'package:flutter/material.dart';

/// Flex组件可以沿着水平和垂直方向排列的子组件
/// Row和Column都是继承Flex
class FlexWidget extends StatefulWidget {
  const FlexWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FlexWidgetState();
  }
}

/// Expanded 只能作为 Flex 的孩子
class _FlexWidgetState extends State<FlexWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flex layout"),
      ),
      body: Center(
        child: Column(
          children: [
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30.0,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      height: 30.0,
                      color: Colors.green,
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                height: 200.0,
                child: Flex(
                  direction: Axis.vertical,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          height: 30.0,
                          color: Colors.red,
                        )),
                    const Spacer(
                      flex: 1,
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 30.0,
                          color: Colors.green,
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
