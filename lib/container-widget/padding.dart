import 'package:flutter/material.dart';

class PaddingWidget extends StatefulWidget {
  const PaddingWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PaddingWidgetState();
  }
}

class _PaddingWidgetState extends State<PaddingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Padding Widget"),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text("Hello World"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text("I am Jack"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Text("I am DashingQi"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
