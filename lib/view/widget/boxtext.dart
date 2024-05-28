import 'package:flutter/material.dart';
import 'package:tap_to_expand/tap_to_expand.dart';

class BoxText extends StatelessWidget {
  final String text;
  final String text2;
  final String? text3;
  final IconData? iconData;
  const BoxText({
    super.key,
    required this.text,
    required this.text2,
    this.text3,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TapToExpand(
        content: Column(
          children: <Widget>[
            // for (var i = 0; i < 20; i++)
            Text(
              text2,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            if (text3 != null) // Null check added here
              Text(
                text3!,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
          ],
        ),
        title: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        closedHeight: 70,
        openedHeight: 200,
      ),
    );
  }
}
