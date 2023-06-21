import 'package:flutter/material.dart';

class ClipWidget extends StatefulWidget {
  const ClipWidget({super.key});

  @override
  State<StatefulWidget> createState() => _ClipWidgetState();
}

class _ClipWidgetState extends State<ClipWidget> {
  @override
  Widget build(BuildContext context) {
    Widget avatar = Image.asset("images/avatar.png", width: 60.0);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Clip Widget"),
      ),
      body: Center(
        child: Column(
          children: [
            avatar,
            ClipOval(
              child: avatar,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: avatar,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  widthFactor: .5,
                  child: avatar,
                ),
                const Text("Hello World", style: TextStyle(color: Colors.green))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRect(
                  child: Align(
                    alignment: Alignment.topLeft,
                    widthFactor: .5,
                    child: avatar,
                  ),
                ),
                const Text(
                  "Hello World",
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
            DecoratedBox(
              decoration: const BoxDecoration(color: Colors.red),
              child: ClipRect(
                clipper: MyClipper(),
                child: avatar,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) => const Rect.fromLTWH(10.0, 15.0, 40.0, 30.0);

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) => false;
}
