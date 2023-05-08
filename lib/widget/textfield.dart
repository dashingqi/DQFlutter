import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TexTFieldWidgetState();
  }
}

class _TexTFieldWidgetState extends State<TextFieldWidget> {
  final TextEditingController _userNameController = TextEditingController();

  final TextEditingController _selectionController = TextEditingController();

  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();

  FocusScopeNode? focusScopeNode;

  @override
  void initState() {
    _userNameController.addListener(() {
      print("controller ---> userName = ${_userNameController.text}");
    });
    _selectionController.text = "hello world";
    _selectionController.selection = TextSelection(
        baseOffset: 2, extentOffset: _selectionController.text.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    focusNode1.addListener(() {
      print(focusNode1.hasFocus);
    });

    focusNode2.addListener(() {
      print(focusNode2.hasFocus);
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextFiled Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              autofocus: true,
              focusNode: focusNode1,
              onChanged: (v) {
                print("onChange userName --> $v");
              },
              decoration: const InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或者邮箱",
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red))),
              controller: _userNameController,
            ),
            TextField(
              focusNode: focusNode2,
              decoration: const InputDecoration(
                  labelText: "密码",
                  hintText: "您的登录密码",
                  prefixIcon: Icon(Icons.lock)),
              obscureText: true,
            ),
            ElevatedButton(
                onPressed: () {
                  focusScopeNode ??= FocusScope.of(context);
                  focusScopeNode?.requestFocus(focusNode2);
                },
                child: const Text("移动焦点")),
            ElevatedButton(
                onPressed: () {
                  focusNode1.unfocus();
                  focusNode2.unfocus();
                },
                child: const Text("隐藏键盘"))
          ],
        ),
      ),
    );
  }
}
