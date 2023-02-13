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
  bool isLoading = true;

  @override
  void initState() {
    getInfo();
    super.initState();
  }

  getInfo() async {
    isLoading;
    setState(() {});
    user = await GetInfo.getSingleUserHome();
    isLoading = false;
    setState(() {});
    print('User: $user');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.whiteColor,
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
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      const MyHistory(),
                      10.horizontalSpace,
                      const Histories()
                    ],
                  ),
                  10.verticalSpace,
                  SizedBox(
                      height: 550,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: user?.body?.edges.length,
                          itemBuilder: (context, index) => HomePosts(
                                text:
                                    '${user?.body?.edges[index].node?.owner?.username}',
                                comment:
                                    '${user?.body?.edges[index].node?.edgeMediaToCaption?.edges[0].node?.text}',
                                image:
                                    '${user?.body?.edges[index].node?.displayResources[2].src}',
                                username:
                                    '${user?.body?.edges[index].node?.owner?.username}',
                                avatar:
                                    'https://fotografias.antena3.com/clipping/cmsimages01/2022/05/07/FB652FAE-E68A-4773-B4E8-662369DC3698/curioso-nombre-que-cristiano-ronaldo-georgina-rodriguez-han-puesto-hija-recien-nacida_104.jpg?crop=482,482,x154,y0&width=1200&height=1200&optimize=low&format=webply',
                                location:
                                    '${user?.body?.edges[index].node?.location?.name ?? ''}',
                              )))
                ],
              ),
            ),
    );
  }
}
