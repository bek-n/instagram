import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/view/domen/components/cached_network_image.dart';
import '../../domen/components/follow_button.dart';
import '../../domen/components/followers_info.dart';
import '../../domen/components/user_bio.dart';
import '../../domen/model/Single_User_model.dart';
import '../../domen/model/search_model.dart';
import '../../domen/repository/repo.dart';
import '../../style/style.dart';

class UserPage extends StatefulWidget {
  final String id;
  const UserPage({
    super.key,
    required this.id,
  });

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  bool isLoading = true;
  Singleuser? user;
  Search? user2;

  @override
  void initState() {
    getInfo();
    super.initState();
  }

  getInfo() async {
    isLoading;
    setState(() {});
    user = await GetInfo.getUsersInfo(id: widget.id);
    isLoading = false;
    setState(() {});
    print('User: $user');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.whiteColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Style.whiteColor,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
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
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FollowersInfo(
                    followers: '10,343',
                    following: '9,286',
                    image:
                        'https://images.unsplash.com/photo-1670272505284-8faba1c31f7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwzOXx8fGVufDB8fHx8&auto=format&fit=crop&w=2000&q=60',
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
                  const FollowButtons(),
                  35.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.grid_on),
                      SvgPicture.asset('assets/svg/reel.svg'),
                      SvgPicture.asset('assets/svg/otmetka.svg'),
                    ],
                  ),
                  15.verticalSpace,
                  SizedBox(
                    height: 10000,
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 3,
                            crossAxisSpacing: 3,
                            crossAxisCount: 3),
                        itemBuilder: (context, index) => CustomImageNetwork(
                            radius: 0,
                            image:
                                'https://source.unsplash.com/random/$index')),
                  )
                ],
              ),
            ),
    );
  }
}
