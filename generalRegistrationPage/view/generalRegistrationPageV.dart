import 'dart:html';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:yolsor_mobile/Modules/generalRegistrationPage/widgets/headerPhotoAndText.dart';
import 'package:yolsor_mobile/Modules/generalRegistrationPage/widgets/innerHeader.dart';
import 'package:yolsor_mobile/Modules/generalRegistrationPage/widgets/yellowbutton.dart';

import '../widgets/headerLocationText.dart';

class GeneralRegistrationPageV extends StatelessWidget {
  const GeneralRegistrationPageV({super.key});

  @override
  Widget build(BuildContext context) {
    
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    var bakNeredeIcon = Icon(Icons.arrow_back);
    var konum = Text(
      "   Konumunuz",
      style: TextStyle(
          color: Colors.white,
          fontSize: 16.sp,
          decoration: TextDecoration.none,
          overflow: TextOverflow.visible),
    );
    // var konumIcon = Icon(Icons.location_pin);
    // var konumMap = Text(
    //   "Şişli, İstanbul, Türkiye",
    //   style: TextStyle(
    //       color: Colors.white,
    //       fontSize: 16.sp,
    //       decoration: TextDecoration.none,
    //       overflow: TextOverflow.visible),
    // );
    // var a = Text(
    //   "BakNerede",
    //   style: TextStyle(
    //       color: Colors.white,
    //       decoration: TextDecoration.none,
    //       fontSize: 30.sp),
    // );
    var iconn = Icon(Icons.arrow_back);
    var searchBarIcon = Icon(Icons.search);
    var searchBarTextField = TextField(
      decoration: InputDecoration(hintText: 'Ara'),
    );

    var searchBarContainer = Container(margin: EdgeInsets.only(top: height * 0.455,left: width * 0.10, right: width * 0.10),
      decoration: BoxDecoration(border: Border.all(color: Colors.redAccent)),
      height: height * 0.05,
      width:  width * 0.9,
      child: new Scaffold(body:    searchBarTextField 
      ),
    );

    // var buttononono = Container(child: yellowbutton);

    // var headerPhotoText = Container(
    //   margin: EdgeInsets.only(left: width * 0.25, right: width * 0.25),
    //   decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
    //   height: height * .5,
    //   width: width * .5,
    //   alignment: FractionalOffset.center,
    //   child: new Row(
    //     children: <Widget>[bakNeredeIcon, a],
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //   ),
    // );

    // var yellowbuttonContainer = Container(
    //   margin: EdgeInsets.only(top: height * 0.30,left: height *0.03),
    //   decoration: BoxDecoration(
    //     border: Border.all(color: Color.fromARGB(255, 68, 255, 193)),
    //   ),
    //   height: height.sp * .2,
    //   width: width.sp * 0.55,
      
    //   child: new Row(
    //     children: <Widget>[yellowbutton],
    //   ),
    // );

    var konumFifth = Container(
      margin: EdgeInsets.only(top: height * 0.23, left: height * 0.015),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 255, 68, 199)),
      ),
      height: height * .2,
      width: width * .45,
      child: new Row(
        children: <Widget>[konum],
      ),
    );

    // var konumFourth = Container(
    //   margin: EdgeInsets.only(top: height * 0.25),
    //   decoration: BoxDecoration(
    //     border: Border.all(color: Color.fromARGB(255, 255, 236, 68)),
    //   ),
    //   height: height * .2,
    //   width: width * .67,
    //   child: new Row(
    //     children: <Widget>[konumIcon, konumMap],
    //   ),
    // );

    var headerPhoto = Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.yellow)),
      height: height / 2,
      width: width,
      child: Image.network(
        "https://previews.123rf.com/images/zoomteam/zoomteam1805/zoomteam180500060/100906980-woman-holding-paper-map-finding-right-tourist-route.jpg",
        fit: BoxFit.fill,
        height: height,
        width: width,
      ),
    );

    var first = Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.greenAccent),
      ),
      height: height.h,
      width: width.w,
    );

    return Stack(children: <Widget>[
      first,
      headerPhoto,
      HeaderPhotoAndText(),
      HeaderLocationText(),
      konumFifth,
      YellowButton(),
      searchBarContainer
    ]);
  }
}

class Responsive extends StatelessWidget {
  @override
  Widget build(BuildContext context2) {
    return MaterialApp(
        builder: (context2, child) => ResponsiveWrapper.builder(
                GeneralRegistrationPageV(),
                maxWidth: 1200,
                minWidth: 480,
                defaultScale: true,
                breakpoints: [
                  ResponsiveBreakpoint.resize(480, name: "mobile"),
                  ResponsiveBreakpoint.autoScale(800, name: "tablet"),
                  ResponsiveBreakpoint.resize(1000, name: "desktop"),
                ]));
  }
}
