import 'package:flutter/material.dart';

class RoundsWidget extends StatelessWidget {
  final String text;
  final String text2;
  final String text3;
  final IconData? iconData;
  final IconData? icon;
  final void Function()? onTap;
  const RoundsWidget({
    Key? key,
    required this.text,
    required this.text2,
    required this.text3,
    this.iconData,
    this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListTile(
      leading: Icon(icon),
      title: Text(text),
      subtitle: Row(
        children: <Widget>[
          Text(
            text2,
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Text(
            text3,
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ],
      ),
      trailing: Icon(iconData),
      onTap: onTap,
    ));
  }
}
