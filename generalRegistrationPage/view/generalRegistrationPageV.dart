import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:yolsor_mobile/Modules/generalRegistrationPage/widgets/header.dart';
import 'package:yolsor_mobile/Modules/generalRegistrationPage/widgets/innerHeader.dart';

var green = Container(
  height: 150.h,
  width: 150.w,
  decoration: BoxDecoration(color: Colors.greenAccent),
  child: InnerHeader(),
);
var red = Container(
    height: 100.h,
    width: 100.w,
    decoration: BoxDecoration(color: Colors.red),
    child: Header());

class GeneralRegistrationPageV extends StatelessWidget {
  const GeneralRegistrationPageV({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[green, red]);
  }
}
