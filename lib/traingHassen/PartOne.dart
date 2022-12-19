import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PartOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('data',
                      style: TextStyle(color: Colors.cyan, fontSize: 30)),
                  Text('data',
                      style: TextStyle(color: Colors.deepOrange, fontSize: 30)),
                ],
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'deepOrange',
                      style: TextStyle(color: Colors.deepOrange, fontSize: 30)),
                  TextSpan(
                      text: 'cyan',
                      style: TextStyle(color: Colors.cyan, fontSize: 30))
                ]),
              ),
              ElevatedButton(
                  onPressed: () => Fluttertoast.showToast(
                      msg: "This is Center Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0),
                  child: Text('Here'))
            ],
          ),
        ),
      ),
    );
  }
}
