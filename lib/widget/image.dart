import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ImageWidgetState();
  }
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Widget")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Image(image: AssetImage("images/avatar.png"), width: 100.0),
            const Image(
                image: NetworkImage(
                    "https://tupian.qqw21.com/article/UploadPic/2023-3/202331421522310397.jpg"),
                width: 100.0),
            Image.network(
              "https://tupian.qqw21"
              ".com/article/UploadPic/2023-3/202331421522310397.jpg",
              height: 500.0,
              width: 500.0,
              fit: BoxFit.contain,
              color: Colors.yellow,
              colorBlendMode: BlendMode.difference,
              repeat: ImageRepeat.repeatY,
            )
          ],
        ),
      ),
    );
  }
}
