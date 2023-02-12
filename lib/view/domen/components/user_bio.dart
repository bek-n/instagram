import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/style.dart';

class UserBio extends StatelessWidget {
  final String username, category, description, link;
  const UserBio(
      {super.key,
      required this.username,
      required this.category,
      required this.description,
      required this.link});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          username,
          style: Style.textStyleRegular2(),
        ),
        3.verticalSpace,
        Text(
          category,
          style:
              Style.textStyleRegular2(size: 13, textColor: Style.greyColor90),
        ),
        3.verticalSpace,
        Text(
          description,
          style: Style.textStyleRegular2(
            size: 13,
          ),
        ),
        3.verticalSpace,
        Text(
          link,
          style: Style.textStyleRegular2(size: 13, textColor: Style.linkColor),
        ),
      ],
    );
  }
}
