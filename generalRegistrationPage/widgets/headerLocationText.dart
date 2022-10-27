import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderLocationText extends StatelessWidget {
  const HeaderLocationText({super.key});

  @override
  Widget build(BuildContext context) { 
    var konumIcon = Icon(Icons.location_pin);
    var konumMap = Text(
      "Şişli, İstanbul, Türkiye",
      style: TextStyle(
          color: Colors.white,
          fontSize: 16.sp,
          decoration: TextDecoration.none,
          overflow: TextOverflow.visible),
    );
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    var konumFourth = Container(
      margin: EdgeInsets.only(top: height * 0.25),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 255, 236, 68)),
      ),
      height: height * .2,
      width: width * .67,
      child: new Row(
        children: <Widget>[konumIcon, konumMap],
      ),
    );

    return Container(child: konumFourth);
  }
}