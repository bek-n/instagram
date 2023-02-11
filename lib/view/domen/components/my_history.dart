import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/style.dart';

class MyHistory extends StatelessWidget {
  const MyHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Container(
            height: 61.h,
            width: 61.w,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/me.jpeg'),
                    fit: BoxFit.cover)),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            height: 20.h,
            width: 20.h,
            decoration: const BoxDecoration(
                color: Style.primaryColor, shape: BoxShape.circle),
            child: const Center(
              child: Icon(
                Icons.add,
                color: Style.whiteColor,
                size: 20,
              ),
            ),
          ),
        )
      ],
    );
  }
}
