import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/controller/home_controller.dart';
import 'package:instagram/view/style/style.dart';
import 'package:provider/provider.dart';
import '../domen/components/histories.dart';
import '../domen/components/my_history.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool like = false;
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
              height: 700,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 1,
                  itemBuilder: (context, index) => Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 13),
                                child: Container(
                                  height: 31.h,
                                  width: 31.w,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Style.blackColor),
                                ),
                              ),
                              8.horizontalSpace,
                              Text(
                                'Name',
                                style: Style.textStyleRegular2(size: 12),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Icon(Icons.more_horiz),
                              )
                            ],
                          ),
                          7.verticalSpace,
                          Container(
                            height: 390.h,
                            width: MediaQuery.of(context).size.width,
                            color: Style.greyColor90,
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    context.read<HomeController>().onChange();
                                  },
                                  icon: context.watch<HomeController>().isLiked
                                      ? Icon(
                                          Icons.favorite_outline,
                                          size: 30,
                                        )
                                      : Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                          size: 30,
                                        )),
                              SvgPicture.asset('assets/svg/comment.svg'),
                              12.horizontalSpace,
                              Icon(Icons.send)
                            ],
                          ),
                        ],
                      )),
            )
          ],
        ),
      ),
    );
  }
}
