import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/style.dart';

class SearchingResult extends StatelessWidget {
  final String? image, title1, title2;
  const SearchingResult(
      {super.key, this.image, required this.title1, required this.title2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 14),
      height: 52.h,
      width: 374.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration:
            
                BoxDecoration(
                  image: DecorationImage(image: NetworkImage("$image")),
                  shape: BoxShape.circle, color: Colors.purple),
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
