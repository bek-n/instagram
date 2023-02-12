import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/view/pages/home/general_page.dart';

import '../../style/style.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.whiteColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Style.whiteColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'username',
          style: Style.textStyleRegular2(),
        ),
        actions: [
          SvgPicture.asset('assets/svg/bell.svg'),
          24.horizontalSpace,
          const Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.more_horiz),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                                    'https://images.unsplash.com/photo-1670272505340-d906d8d77d03?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ],
                ),
                60.horizontalSpace,
                Column(
                  children: [
                    Text(
                      '1,234',
                      style: Style.textStyleRegular2(size: 14),
                    ),
                    Text('Posts'),
                  ],
                ),
                24.horizontalSpace,
                Column(
                  children: [
                    Text(
                      '5,678',
                      style: Style.textStyleRegular2(size: 14),
                    ),
                    Text('Followers'),
                  ],
                ),
                24.horizontalSpace,
                Column(
                  children: [
                    Text(
                      '9,286',
                      style: Style.textStyleRegular2(size: 14),
                    ),
                    Text('Following'),
                  ],
                ),
              ],
            ),
            6.verticalSpace,
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: Style.textStyleRegular2(),
                  ),
                  3.verticalSpace,
                  Text(
                    'Category/Genre text',
                    style: Style.textStyleRegular2(
                        size: 13, textColor: Style.greyColor90),
                  ),
                  3.verticalSpace,
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                    style: Style.textStyleRegular2(
                      size: 13,
                    ),
                  ),
                  3.verticalSpace,
                  Text(
                    'Link goes here',
                    style: Style.textStyleRegular2(
                        size: 13, textColor: Style.linkColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
