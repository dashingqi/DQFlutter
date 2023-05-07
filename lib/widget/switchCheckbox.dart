import 'package:flutter/material.dart';

class SwitchAndCheckBoxWidget extends StatefulWidget {
  const SwitchAndCheckBoxWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SwitchAndCheckBoxWidget();
  }
}

class _SwitchAndCheckBoxWidget extends State<SwitchAndCheckBoxWidget> {
  bool _switchSelected = true;
  bool _checkBoxSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Switch And CheckBox")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
                value: _switchSelected,
                activeColor: Colors.lightBlue,
                onChanged: (value) {
                  setState(() {
                    _switchSelected = value;
                  });
                }),
            Checkbox(
                value: _checkBoxSelected,
                activeColor: Colors.yellow, // 选中时的颜色
                onChanged: (value) {
                  setState(() {
                    _checkBoxSelected = value!;
                  });
                })
          ],
        ),
      ),
    );
  }
}
