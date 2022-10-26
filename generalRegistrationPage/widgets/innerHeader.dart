import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InnerHeader extends StatelessWidget {
  const InnerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Genel Kayıt Sayfası",
          style: TextStyle(fontSize: 20.sp, color: Colors.amber)),
    );
  }
}
