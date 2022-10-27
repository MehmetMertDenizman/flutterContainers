import 'package:flutter/material.dart';

var iconn = Icon(Icons.arrow_back);
var trailingText = "Reset";

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[Text(trailingText), iconn]);
  }
}
