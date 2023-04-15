import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: "Hello"),
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

class StateLifeCycleTest extends StatelessWidget {
  const StateLifeCycleTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CounterWidget();
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key, this.intValue = 0}) : super(key: key);

  final int intValue;

  @override
  State<StatefulWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget>
    with WidgetsBindingObserver {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _counter = widget.intValue;
    debugPrint("_CounterWidgetState--> initState");
    // 注册监听器
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      debugPrint("_CounterWidgetState--> 单次Frame绘制回调");
    });
    WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
      debugPrint("_CounterWidgetState--> 实时Frame绘制回调");
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint("_CounterWidgetState--> didChangeDependencies");
  }

  @override
  void didUpdateWidget(covariant CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint("_CounterWidgetState--> didUpdateWidget");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("_CounterWidgetState--> build");
    return Scaffold(
        body: Center(
      child: TextButton(
        child: Text('$_counter'),
        onPressed: () => setState(
          () => ++_counter,
        ),
      ),
    ));
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint("_CounterWidgetState--> deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint("_CounterWidgetState--> dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    debugPrint("_CounterWidgetState--> reassemble");
  }


  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    debugPrint("_CounterWidgetState--> $state");
  }
}
