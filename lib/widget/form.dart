import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FormWidgetState();
  }
}

class _FormWidgetState extends State<FormWidget> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();

  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Widget"),
      ),
      body: Center(
        child: Column(
          children: [
            Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    TextFormField(
                      autofocus: true,
                      controller: _userNameController,
                      decoration: const InputDecoration(
                          labelText: "用户名",
                          hintText: "用户名或邮箱",
                          icon: Icon(Icons.person)),
                      validator: (v) {
                        return v!.trim().isNotEmpty ? null : "用户名不能为空";
                      },
                    ),
                    TextFormField(
                      autofocus: true,
                      controller: _pwdController,
                      decoration: const InputDecoration(
                          labelText: "密码",
                          hintText: "您的登录密码",
                          icon: Icon(Icons.lock)),
                      validator: (v) {
                        return v!.trim().length > 5 ? null : "密码不能少于6位";
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Row(
                        children: [
                          Expanded(
                              child: ElevatedButton(
                            onPressed: () {
                              if ((_formKey.currentState as FormState)
                                  .validate()) {}
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text("登录"),
                            ),
                          ))
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
