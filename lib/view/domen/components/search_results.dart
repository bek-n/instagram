import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/view/domen/components/cached_network_image.dart';

import '../../style/style.dart';

class SearchingResult extends StatelessWidget {
  final String image, title1, title2;
  const SearchingResult(
      {super.key,
      required this.image,
      required this.title1,
      required this.title2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 14),
      height: 52.h,
      width: 374.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageNetwork(
            image: image,
            height: 60,
            width: 60,
            radius: 10,
          ),
          10.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$title1',
                style: Style.textStyleRegular2(),
              ),
              2.verticalSpace,
              Text(
                '$title2',
                style: Style.textStyleRegular2(size: 14),
              ),
            ],
          )
        ],
      ),
    );
  }
}
