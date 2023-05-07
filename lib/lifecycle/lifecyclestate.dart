import 'package:flutter/material.dart';

class StateLifeCycleTest extends StatelessWidget {
  const StateLifeCycleTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CounterWidget();
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