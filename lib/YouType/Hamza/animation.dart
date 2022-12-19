import 'dart:math';

import 'package:flutter/material.dart';

class AnimationH extends StatefulWidget {
  AnimationH({Key? key}) : super(key: key);

  @override
  _AnimationHState createState() => _AnimationHState();
}

class _AnimationHState extends State<AnimationH>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedBuilder(
                animation: _controller.view,
                builder: (context, child) {
                  return Transform.rotate(
                    angle: _controller.value * 2 * pi,
                    child: child,
                  );
                },
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  child: Center(child: Text("cdssmd")),
                )),
            ElevatedButton(
                onPressed: () {
                  return null;
                },
                child: Text("Click"))
          ],
        ),
      ),
    );
  }
}
