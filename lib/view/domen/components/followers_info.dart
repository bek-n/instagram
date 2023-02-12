import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/style.dart';

class FollowersInfo extends StatelessWidget {
  final String image, posts, followers, following;
  const FollowersInfo({super.key, required this.image, required this.posts, required this.followers, required this.following});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        19.horizontalSpace,
        Stack(
          children: [
            Image.asset(
              'assets/images/ring.png',
              height: 90,
              width: 90,
            ),
            Positioned(
              left: 7,
              top: 7,
              child: Container(
                margin: EdgeInsets.only(right: 12),
                height: 76.h,
                width: 76.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            image),
                        fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
        60.horizontalSpace,
        Column(
          children: [
            Text(
              posts,
              style: Style.textStyleRegular2(size: 14),
            ),
            Text('Posts'),
          ],
        ),
        24.horizontalSpace,
        Column(
          children: [
            Text(
              followers,
              style: Style.textStyleRegular2(size: 14),
            ),
            Text('Followers'),
          ],
        ),
        24.horizontalSpace,
        Column(
          children: [
            Text(
              following,
              style: Style.textStyleRegular2(size: 14),
            ),
            Text('Following'),
          ],
        ),
      ],
    );
  }
}
