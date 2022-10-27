import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

var iconn = Icon(Icons.arrow_back);
var trailingText = "Reset";

class HeaderPhotoAndText extends StatelessWidget {
  const HeaderPhotoAndText({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    var bakNeredeIcon = Icon(Icons.arrow_back);
var a = Text(
      "BakNerede",
      style: TextStyle(
          color: Colors.white,
          decoration: TextDecoration.none,
          fontSize: 30.sp),
    );
    var headerPhotoText = Container(
      margin: EdgeInsets.only(left: width * 0.25, right: width * 0.25),
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      height: height * .5,
      width: width * .5,
      alignment: FractionalOffset.center,
      child: new Row(
        children: <Widget>[bakNeredeIcon, a],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );

    return SizedBox(child:headerPhotoText);
  }
}
