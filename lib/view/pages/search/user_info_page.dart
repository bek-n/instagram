import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../domen/components/follow_button.dart';
import '../../domen/components/followers_info.dart';
import '../../domen/components/user_bio.dart';
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
            const FollowersInfo(
              followers: '5,678',
              following: '9,286',
              image:
                  'https://images.unsplash.com/photo-1670272505340-d906d8d77d03?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
              posts: '1,234',
            ),
            6.verticalSpace,
            const Padding(
                padding: EdgeInsets.only(left: 12),
                child: UserBio(
                  category: 'Category/Genre text',
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                  link: 'Link goes here',
                  username: 'Username',
                )),
            12.verticalSpace,
            const FollowButtons()
          ],
        ),
      ),
    );
  }
}
