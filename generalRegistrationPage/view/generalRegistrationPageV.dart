import 'dart:html';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:yolsor_mobile/Modules/generalRegistrationPage/widgets/header.dart';
import 'package:yolsor_mobile/Modules/generalRegistrationPage/widgets/innerHeader.dart';

var a = Text("aaaa");
var b = Text("swss");
var iconn = Icon(Icons.arrow_back);
var green = Container(
  margin: new EdgeInsets.only(top: 95.sp),
  alignment: Alignment.center,
  height: 100.h,
  width: 360.w,
  child: a,
);
var blue = Container(
  margin: new EdgeInsets.only(top: 160.sp),
  alignment: Alignment.bottomLeft,
  height: 100.h,
  width: 360.w,
  child: b,
);
var red = Container(
  height: 690.sp,
  width: 360.sp,
  color: Colors.red,
  child: Image.asset(
    "lib/assets/Img/default.jpg",
    fit: BoxFit.cover,
    height: 600.sp,
  ),
);

class GeneralRegistrationPageV extends StatelessWidget {
  const GeneralRegistrationPageV({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(builder: ResponsiveWrapper()
      
      children: <Widget>[red, green, blue]);
  }
}

class Responsive extends StatelessWidget{
  @override
  Widget build(BuildContext context2)
}
