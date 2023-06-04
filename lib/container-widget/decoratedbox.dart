import 'package:flutter/material.dart';

class DecoratedBoxWidget extends StatefulWidget {
  const DecoratedBoxWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DecoratedBoxWidgetState();
  }
}

class _DecoratedBoxWidgetState extends State<DecoratedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("DecoratedBox-装饰器"),
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0, 0),
            child: Column(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.red,
                        Colors.green,
                        Colors.orange.shade700
                      ]),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black54,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 8.0)
                      ]),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            )));
  }
}
