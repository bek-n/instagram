import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/view/domen/components/cached_network_image.dart';

import '../../style/style.dart';

class SearchingResult extends StatefulWidget {
  final String image, title1, title2, verified;
  const SearchingResult(
      {super.key,
      required this.image,
      required this.title1,
      required this.title2,
      required this.verified});

  @override
  State<SearchingResult> createState() => _SearchingResultState();
}

class _SearchingResultState extends State<SearchingResult> {
  bool isVerified = false;
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
            image: widget.image,
            height: 60,
            width: 60,
            radius: 10,
          ),
          10.horizontalSpace,
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '${widget.title1}',
                        style: Style.textStyleRegular2(),
                      ),
                      5.horizontalSpace,
                      widget.verified == 'true'
                          ? Icon(
                              Icons.verified,
                              color: Style.primaryColor,
                              size: 16,
                            )
                          : SizedBox.shrink()
                    ],
                  ),
                  2.verticalSpace,
                  Text(
                    '${widget.title2}',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Style.textStyleRegular2(size: 14),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
