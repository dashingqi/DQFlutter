import 'package:dq_flutter/layout/boxconstraints.dart';
import 'package:dq_flutter/layout/stackposition.dart';
import 'package:dq_flutter/widget/form.dart';
import 'package:dq_flutter/widget/icon.dart';
import 'package:dq_flutter/widget/image.dart';
import 'package:dq_flutter/widget/progress.dart';
import 'package:dq_flutter/widget/switchCheckbox.dart';
import 'package:dq_flutter/widget/textfield.dart';
import 'package:flutter/material.dart';

import 'container-widget/decoratedbox.dart';
import 'container-widget/padding.dart';
import 'container-widget/transform.dart';
import 'layout/align.dart';
import 'layout/flex.dart';
import 'layout/layoutbuilder.dart';
import 'layout/rowcolumn.dart';
import 'layout/wrapflow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TransformWidget(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
