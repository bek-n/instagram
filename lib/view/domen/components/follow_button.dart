import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../controller/home_controller.dart';
import '../../style/style.dart';

class FollowButtons extends StatelessWidget {
  const FollowButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        12.horizontalSpace,
        GestureDetector(
          onTap: () {
            context.read<HomeController>().onButtonChange();
          },
          child: Container(
            height: 40.h,
            width: 180.w,
            decoration: BoxDecoration(
                color: context.watch<HomeController>().isfollowed
                    ? Style.primaryColor
                    : Style.greyColor90,
                borderRadius: BorderRadius.circular(4)),
            child: Center(
                child: Text(
              context.watch<HomeController>().isfollowed
                  ? 'Follow'
                  : 'Unfollow',
              style: Style.textStyleRegular2(
                  size: 13, textColor: Style.whiteColor),
            )),
          ),
        ),
        6.horizontalSpace,
        Container(
          height: 40.h,
          width: 180.w,
          decoration: BoxDecoration(
              color: Style.greyColor90, borderRadius: BorderRadius.circular(4)),
          child: Center(
              child: Text(
            'Message',
            style:
                Style.textStyleRegular2(size: 13, textColor: Style.whiteColor),
          )),
        ),
        6.horizontalSpace,
        Container(
          height: 30.h,
          width: 32.w,
          decoration: BoxDecoration(
              color: Style.greyColor90, borderRadius: BorderRadius.circular(4)),
          child: const Center(
              child: Icon(
            Icons.person_add,
            size: 17,
            color: Style.whiteColor,
          )),
        )
      ],
    );
  }
}
