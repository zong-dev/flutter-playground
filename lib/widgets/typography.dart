import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  AppLargeText(
      {Key? key, required this.text, this.color = Colors.black, this.size = 30})
      : super(key: key);

  final String text;
  final Color color;
  double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold
      ),
    );
  }
}


class AppText extends StatelessWidget {
  AppText(
      {Key? key, required this.text, this.color = Colors.black54, this.size = 30})
      : super(key: key);

  final String text;
  final Color color;
  double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
