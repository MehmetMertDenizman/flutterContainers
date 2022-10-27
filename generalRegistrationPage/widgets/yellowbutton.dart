import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YellowButton extends StatelessWidget {
  const YellowButton({super.key});
   

  @override
  Widget build(BuildContext context) {
    var yellowbutton = ElevatedButton(
      onPressed: () {},
      child: Text("Yakınımdakileri göster"),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
    );
     var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    var yellowbuttonContainer = Container(
      margin: EdgeInsets.only(top: height * 0.30,left: height *0.03),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 68, 255, 193)),
      ),
      height: height.sp * .2,
      width: width.sp * 0.55,
      
      child: new Row(
        children: <Widget>[yellowbutton],
      ),
    );

    return SizedBox(
     
        child: yellowbutton);
          }
          
        
  }

