import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/view/domen/model/Single_User_model.dart';
import 'package:instagram/view/style/style.dart';
import '../../domen/components/histories.dart';
import '../../domen/components/home_posts.dart';
import '../../domen/components/my_history.dart';
import '../../domen/repository/repo.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool like = false;
  Singleuser? user;

  @override
  void initState() {
    getInfo();
    super.initState();
  }

  getInfo() async {
    user = await GetInfo.getSingleUserHome();
    print('User: $user');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Style.whiteColor,
        title: Image.asset(
          'assets/images/Logo.png',
          height: 30,
        ),
        actions: [
          Icon(Icons.favorite_outline),
          26.horizontalSpace,
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: SvgPicture.asset('assets/svg/Direct.svg'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const MyHistory(),
                18.horizontalSpace,
                const Histories()
              ],
            ),
            25.verticalSpace,
            SizedBox(
                height: double.maxFinite,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    itemBuilder: (context, index) => HomePosts(
                          text:
                              '${user?.body?.edges[index].node?.owner?.username}',
                        )))
          ],
        ),
      ),
    );
  }
}
