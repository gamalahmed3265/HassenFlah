import 'package:flutter/material.dart';
import 'package:thirdpro/YouType/Hamza/dataListTile.dart';

class DetilesHassen extends StatelessWidget {
  int index;
  DetilesHassen({
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${Mobilelist[index]['name']}',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '${Mobilelist[index]['contant']}',
            ),
          ],
        ),
      ),
    );
  }
}
